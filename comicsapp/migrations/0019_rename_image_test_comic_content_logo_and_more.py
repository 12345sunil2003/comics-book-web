# Generated by Django 4.2.5 on 2024-01-11 06:29

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('comicsapp', '0018_imagemodel_test_comic_content'),
    ]

    operations = [
        migrations.RenameField(
            model_name='test_comic_content',
            old_name='image',
            new_name='logo',
        ),
        migrations.AlterField(
            model_name='imagemodel',
            name='image',
            field=models.ImageField(upload_to='comic_images'),
        ),
    ]