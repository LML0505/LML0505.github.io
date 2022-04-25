# myobject/myadmin/views/index.py
from django.shortcuts import render
from django.http import HttpResponse

#admin homepage 
def index(request):
    return render (request,"myadmin/index/index.html")