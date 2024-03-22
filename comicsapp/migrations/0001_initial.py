# Generated by Django 4.2.5 on 2023-09-24 04:36

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='comic_content',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('image', models.ImageField(upload_to='comic_images')),
                ('title', models.CharField(max_length=255)),
                ('description', models.CharField(max_length=255)),
                ('fav', models.BooleanField(default=False)),
            ],
        ),
    ]
