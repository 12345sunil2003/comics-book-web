# Generated by Django 4.2.5 on 2024-01-11 05:17

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('comicsapp', '0017_delete_test_comic_content'),
    ]

    operations = [
        migrations.CreateModel(
            name='ImageModel',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('image', models.ImageField(upload_to='comic_images/')),
            ],
        ),
        migrations.CreateModel(
            name='test_comic_content',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('image', models.ImageField(upload_to='comic_images')),
                ('title', models.CharField(max_length=255)),
                ('description', models.TextField()),
                ('fav', models.BooleanField(default=False)),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('category', models.CharField(max_length=255)),
                ('status', models.CharField(max_length=255, null=True)),
                ('price', models.CharField(max_length=255, null=True)),
                ('images', models.ManyToManyField(blank=True, to='comicsapp.imagemodel')),
            ],
        ),
    ]
