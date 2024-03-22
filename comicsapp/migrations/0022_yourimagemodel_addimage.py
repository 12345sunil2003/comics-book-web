# Generated by Django 4.2.5 on 2024-01-22 03:23

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('comicsapp', '0021_remove_test_comic_content_images_delete_addimage_and_more'),
    ]

    operations = [
        migrations.CreateModel(
            name='YourImageModel',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('logo', models.ImageField(upload_to='comic_images')),
                ('title', models.CharField(max_length=255)),
                ('description', models.TextField()),
                ('fav', models.BooleanField(default=False)),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('category', models.CharField(max_length=255)),
                ('image', models.ImageField(blank=True, null=True, upload_to='comic_images/')),
                ('status', models.CharField(max_length=255, null=True)),
                ('price', models.CharField(max_length=255, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='AddImage',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('comicimages', models.ManyToManyField(blank=True, null=True, to='comicsapp.yourimagemodel')),
            ],
        ),
    ]