from django.urls import path
from . import views

urlpatterns =[
    path('payment_home/success/', views.success, name='success'),
    path('payment_home/<int:id>/', views.home, name='home'),
]