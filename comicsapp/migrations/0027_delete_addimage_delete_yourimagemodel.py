# Generated by Django 4.2.5 on 2024-01-22 04:50

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('comicsapp', '0026_remove_yourimagemodel_category_and_more'),
    ]

    operations = [
        migrations.DeleteModel(
            name='AddImage',
        ),
        migrations.DeleteModel(
            name='YourImageModel',
        ),
    ]