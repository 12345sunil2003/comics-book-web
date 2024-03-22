# Generated by Django 4.2.5 on 2024-01-22 09:20

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('comicsapp', '0029_remove_addimage_comicimages_delete_comic_content_and_more'),
    ]

    operations = [
        migrations.CreateModel(
            name='comic_content',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('image', models.ImageField(upload_to='comic_images')),
                ('title', models.CharField(max_length=255)),
                ('description', models.TextField()),
                ('fav', models.BooleanField(default=False)),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('category', models.CharField(max_length=255)),
                ('image1', models.ImageField(null=True, upload_to='comic_images')),
                ('image2', models.ImageField(null=True, upload_to='comic_images')),
                ('image3', models.ImageField(null=True, upload_to='comic_images')),
                ('status', models.CharField(max_length=255, null=True)),
                ('price', models.CharField(max_length=255, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='comic_payment',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('user_id', models.CharField(max_length=255)),
                ('payment_id', models.CharField(max_length=255)),
                ('amount', models.CharField(max_length=255)),
                ('book_id', models.CharField(max_length=255)),
                ('status', models.CharField(max_length=255)),
            ],
        ),
        migrations.CreateModel(
            name='YourImageModel',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('image', models.ImageField(blank=True, null=True, upload_to='comic_images/')),
            ],
        ),
        migrations.CreateModel(
            name='AddImage',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('logo', models.ImageField(upload_to='comic_images')),
                ('title', models.CharField(max_length=255)),
                ('description', models.TextField()),
                ('fav', models.BooleanField(default=False)),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('category', models.CharField(max_length=255)),
                ('status', models.CharField(max_length=255, null=True)),
                ('price', models.CharField(max_length=255, null=True)),
                ('comicimages', models.ManyToManyField(blank=True, null=True, to='comicsapp.yourimagemodel')),
            ],
        ),
    ]
