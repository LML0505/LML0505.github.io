from django.db import models
from datetime import datetime

# Create your models here.

#staff model 
class User(models.Model):
    username = models.CharField(max_length=50)    #account
    nickname = models.CharField(max_length=50)    #nickname
    password_hash = models.CharField(max_length=100)#password
    password_salt = models.CharField(max_length=50)    #passwordsalt
    status = models.IntegerField(default=1)    #status:1 staff /2 manager/3 useradmin/6 boss/8banned/ 9deleted
    create_at = models.DateTimeField(default=datetime.now)    #createtime
    update_at = models.DateTimeField(default=datetime.now)    #changetime

    def toDict(self):
       return {'id':self.id,'username':self.username,'nickname':self.nickname,'password_hash':self.password_hash,'password_salt':self.password_salt,'status':self.status,'create_at':self.create_at.strftime('%Y-%m-%d %H:%M:%S'),'update_at':self.update_at.strftime('%Y-%m-%d %H:%M:%S')}

    class Meta:
        db_table = "user"  # 更改表名


from django.db import models

#菜品分类信息模型 dish category 
class Category(models.Model):
    name = models.CharField(max_length=50)#category name 
    status = models.IntegerField(default=1)        #status:1active /9delete 
    create_at = models.DateTimeField(default=datetime.now)    #create time 
    update_at = models.DateTimeField(default=datetime.now)    #edit time 

    class Meta:
        db_table = "category"  #


#product 
class Product(models.Model):
    category_id = models.IntegerField()    #id
    cover_pic = models.CharField(max_length=50)    #pic
    name = models.CharField(max_length=50)#name
    price = models.FloatField()    #price
    status = models.IntegerField(default=1)        #status:1 normal 2:no sale or no stock 9 delete 
    create_at = models.DateTimeField(default=datetime.now)   
    update_at = models.DateTimeField(default=datetime.now)    

    def toDict(self):
        return {'id':self.id,'category_id':self.category_id,'cover_pic':self.cover_pic,
        'name':self.name,'price':self.price,'status':self.status,
        'create_at':self.create_at.strftime('%Y-%m-%d %H:%M:%S'),'update_at':self.update_at.strftime('%Y-%m-%d %H:%M:%S')}

    class Meta:
        db_table = "product"  

class Customer(models.Model):
    email = models.CharField(max_length=50)    #昵称
    creditCard = models.CharField(max_length=255)    #头像
    mobile = models.CharField(max_length=50)    #电话
    status = models.IntegerField(default=1)        #状态:1正常/2禁用/9删除
    create_at = models.DateTimeField(default=datetime.now)    #创建时间
    update_at = models.DateTimeField(default=datetime.now)    #修改时间

    def toDict(self):
        return {'id':self.id,'nickname':self.email,'email':self.creditCard,'creditCard':self.mobile,'status':self.status,'create_at':self.create_at.strftime('%Y-%m-%d %H:%M:%S'),'update_at':self.update_at.strftime('%Y-%m-%d %H:%M:%S')}

    class Meta:
        db_table = "customer"  # 更改表名

class Orders(models.Model):
    table=models.IntegerField() #table num
    cus_id = models.IntegerField() #会员id
    user_id = models.IntegerField()   #操作员id
    money = models.FloatField()     #金额
    mobile = models.CharField(max_length=50)
    status = models.IntegerField(default=1)   #订单状态:1过行中/2无效/3已完成
    promoCode = models.CharField(max_length=45)
    payment_status = models.IntegerField(default=2)   #支付状态:1未支付/2已支付/3已退款
    create_at = models.DateTimeField(default=datetime.now)  #创建时间
    update_at = models.DateTimeField(default=datetime.now)  #修改时间

    class Meta:
        db_table = "orders"  # 更改表名

#订单详情模型
class OrderDetail(models.Model):
    order_id = models.IntegerField()  #订单id
    product_id = models.IntegerField()  #菜品id
    product_name = models.CharField(max_length=50) #菜品名称
    price = models.FloatField()     #单价
    quantity = models.IntegerField()  #数量
    status = models.IntegerField(default=1) #状态:1正常/9删除
    
    class Meta:
        db_table = "order_detail"  # 更改表名

class promoCode(models.Model):
    code=models.CharField(max_length=45)
    discount=models.IntegerField()
    status = models.IntegerField(default=1) #status:1using now /9stoped used 
    create_at = models.DateTimeField(default=datetime.now)  #创建时间
    change_at = models.DateTimeField(default=datetime.now)  #修改时间
    class Meta:
        db_table = "promocode"  # 更改表名

# 支付信息模型
class Payment(models.Model):
    order_id = models.IntegerField()  #订单id号
    cus_id = models.IntegerField() #会员id
    money = models.FloatField()     #支付金额
    type = models.IntegerField()      #付款方式：1cash/2 creditcard
    status = models.IntegerField(default=1) #支付状态:1未支付/2已支付/3已退款
    create_at = models.DateTimeField(default=datetime.now)  #创建时间
    update_at = models.DateTimeField(default=datetime.now)  #修改时间

    class Meta:
        db_table = "payment"  # 更改表名

class Table(models.Model):
    table_id=models.IntegerField() #table num 

    class Meta:
        db_table="table"