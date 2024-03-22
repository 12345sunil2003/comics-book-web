# Generated by Django 4.2.5 on 2023-10-04 05:03

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('comicsapp', '0008_remove_comic_content_image1_and_more'),
    ]

    operations = [
        migrations.AddField(
            model_name='comic_content',
            name='image1',
            field=models.ImageField(null=True, upload_to='comic_images'),
        ),
        migrations.AddField(
            model_name='comic_content',
            name='image2',
            field=models.ImageField(null=True, upload_to='comic_images'),
        ),
        migrations.AddField(
            model_name='comic_content',
            name='image3',
            field=models.ImageField(null=True, upload_to='comic_images'),
        ),
    ]
