from django.db import models

# Create your models here.
class comic_content(models.Model):
    image = models.ImageField(upload_to='comic_images')
    title = models.CharField(max_length=255)
    description = models.TextField()
    fav = models.BooleanField(default=False)
    created_at = models.DateTimeField(auto_now_add=True)
    category = models.CharField(max_length=255)
    image1 = models.ImageField(upload_to='comic_images', null=True)
    image2 = models.ImageField(upload_to='comic_images', null=True)
    image3 = models.ImageField(upload_to='comic_images', null=True)
    status = models.CharField(max_length=255, null=True)
    price = models.CharField(max_length=255, null=True)


class AddImage(models.Model):
    logo = models.ImageField(upload_to='comic_images')
    title = models.CharField(max_length=255)
    description = models.TextField()
    fav = models.BooleanField(default=False)
    created_at = models.DateTimeField(auto_now_add=True)
    category = models.CharField(max_length=255)
    status = models.CharField(max_length=255, null=True)
    price = models.CharField(max_length=255, null=True)
    comicimages = models.ManyToManyField('YourImageModel', blank=True, null=True)


class YourImageModel(models.Model):
    image = models.ImageField(upload_to='comic_images/', blank=True, null=True)


class comic_payment(models.Model):
    user_id = models.CharField(max_length=255)
    payment_id = models.CharField(max_length=255)
    amount = models.CharField(max_length=255)
    book_id = models.CharField(max_length=255)
    status = models.CharField(max_length=255)