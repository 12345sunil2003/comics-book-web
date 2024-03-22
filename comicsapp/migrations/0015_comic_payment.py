# Generated by Django 4.2.5 on 2023-11-02 03:06

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('comicsapp', '0014_delete_payment'),
    ]

    operations = [
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
    ]