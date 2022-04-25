# myobject/web/views/index.py
from django.shortcuts import render
from django.http import HttpResponse

#order homepage
def index(request):
    return HttpResponse('welcome to order')