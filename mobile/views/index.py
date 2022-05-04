# myobject/mobile/views/index.py


from datetime import datetime
from django.shortcuts import render
from django.http import HttpResponse
from django.shortcuts import redirect
from django.urls import reverse
from myadmin.models import Product, Category,Orders,promoCode,OrderDetail,Customer
from django.db.models import Q
from django.core.exceptions import ObjectDoesNotExist

# Create your views here.
def index(request):
    '''home page'''
    clist = Category.objects.filter(status=1)
    productlist = dict()
    for vo in clist:
        plist = Product.objects.filter(category_id=vo.id,status=1)
        productlist[vo.id] = plist
    context = {"categorylist":clist,"productlist":productlist.items(),"cid":clist[0]}
    return render(request,"mobile/index.html",context)



def addOrders(request):
    ''' prepare checkout  '''
    #尝试从session中获取名字为cartlist的购物车信息，若没有返回{}
    cartlist = request.session.get('cartlist',{})
    total_money = 0 #初始化一个总金额
    #遍历购物车中的菜品并累加总金额
    for vo in cartlist.values():
        total_money += vo['num']*vo['price']
    request.session['total_money'] = total_money #放进session
    return render(request,"mobile/addOrders.html")
    

def doAddOrders(request):
    
    try:
        # find promocode 
        discount = 0 
        pc=promoCode.objects.get(Q(code=request.POST['promoCode']),Q(status=1))
        discount=pc.discount
        #add cust
        custlist=Customer.objects.all()
        result =1;
        cus=Customer()
        for cust in custlist:
            if cust.mobile != request.POST['mobile'] :
                #means is new customer 
                result=0
            else :
                result =1
        if result == 0:

           cus=Customer()
           cus.email = request.POST['email']
           cus.creditCard = request.POST['creditCard']
           cus.mobile = request.POST['mobile']
           cus.status=1;
           cus.create_at = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
           cus.update_at = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
           cus.save()
        else :
            cus = Customer.objects.get(mobile=request.POST['mobile'])
            

        #cus=Customer.objects.filter(mobile=request.POST['mobile'])
        #add order 
        od = Orders()
        total =request.session['total_money']
        total = total-discount
        od.cus_id = cus.id
        od.user_id = 0
        od.money = total
        od.status = 1 #订单状态:1过行中/2无效/3已完成
        od.promoCode=request.POST['promoCode']
        od.payment_status = 2 #支付状态:1未支付/2已支付/3已退款
        od.create_at = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
        od.update_at = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
        od.save()

       

        #add order detail
        cartlist = request.session.get("cartlist",{}) #获取购物车中的菜品信息

        #go through cartlist to add order deatil
        for item in cartlist.values():
            #print(item['id'])
            odetail = OrderDetail()
            odetail.order_id = od.id  #订单id
            odetail.product_id = item['id']  #菜品id
            odetail.product_name = item['name'] #菜品名称
            odetail.price = item['price']     #单价
            odetail.quantity = item['num']  #数量
            odetail.status = 1 #状态:1正常/9删除
            odetail.save()

        # 清空session购物车信息
        del request.session["cartlist"]
        del request.session['total_money']
        context={"order":od,"info":"promocode valid","discount":discount}
    except Exception as err :
        context={"order":od,"info":"promocode used","discount":discount}
    return render(request,"mobile/orderinfo.html",context)
