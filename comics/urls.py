from django.contrib import admin
from django.urls import path, include
from comicsapp import views
from django.conf import settings
from django.conf.urls.static import static
from django.contrib.auth import views as auth_views
urlpatterns = [
    path('admin/', admin.site.urls),
    path('index/',views.index),
    path('twousers/',views.index2),
    path('',views.signin),
    path('singup/',views.singup),
    path('adminindex/',views.adminindex),
    path('comichome/',views.comic_home),
    path('favourite/',views.favourite),
    path('new/<int:id>/',views.single_content),
    path('category/',views.category),
    # path('up_comic/',views.upload),
    path('like_button/<int:id>/',views.like_button),
    path('profile/',views.profile),
    path('airtical/',views.airtical),
    path('action/',views.action),
    path('drama/',views.drama),
    path('horror/',views.horror),
    path('comedy/',views.comedy),
    path('romance/',views.romance),
    path('thriller/', views.thriller),
    path('start/',views.start_book),
    path('zero/',views.zero_book),
    path('Jojo/',views.Jojo_book),
    path('komi/',views.komi_book),
    path('Boruto/',views.Boruto_book),
    path('kaguya/',views.kaguya_book),
    path('smash/', views.smash_book),
    path('final/<int:id>/',views.final),
    path('update/',views.update),
    path('logout/',views.logout),
    path('singin/',views.signin),
    path('',include("comicsapp.urls")),
    path('error/<int:id>/',views.payment_error),
    path('admin_home/',views.admin_home),
    path('admin_login/', views.admin_login),
    path('admin_logout/',views.admin_logout),
    path('data_table/',views.data_table),
    path('comic_table/',views.comic_table),
    path('delete_user/<int:id>/',views.delete_user),
    path('delete_comic/<int:id>/',views.delete_comic),
    path('up_comic/',views.addcomic,name='addcomic'),
    path('imgslider/<int:comic_id>/', views.imgslider, name='view_comic'),
    path('profile_update/', views.profile_update, name='profile_update')


    ]
urlpatterns += static(settings.MEDIA_URL,document_root=settings.MEDIA_ROOT)