# myobject/mobile/urls.py

from django.urls import path

from mobile.views import index,cart 



urlpatterns = [

    

    path('', index.index, name="mobile_index"), #移动端首页

  
    path('orders/add', index.addOrders, name="mobile_addorders"),
    path('orders/doadd', index.doAddOrders, name="mobile_doaddorders"),
    
    # 购物车信息管理路由配置
    path('cart/add', cart.add, name="mobile_cart_add"),
    path('cart/del', cart.delete, name="mobile_cart_del"),
    path('cart/clear', cart.clear, name="mobile_cart_clear"),
    path('cart/change', cart.change, name="mobile_cart_change"),
    

]