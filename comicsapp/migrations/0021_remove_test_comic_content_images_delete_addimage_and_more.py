# Generated by Django 4.2.5 on 2024-01-22 03:22

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('comicsapp', '0020_yourimagemodel_addimage'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='test_comic_content',
            name='images',
        ),
        migrations.DeleteModel(
            name='AddImage',
        ),
        migrations.DeleteModel(
            name='test_comic_content',
        ),
        migrations.DeleteModel(
            name='YourImageModel',
        ),
    ]
