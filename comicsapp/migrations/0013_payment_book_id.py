# Generated by Django 4.2.5 on 2023-11-02 02:45

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('comicsapp', '0012_payment'),
    ]

    operations = [
        migrations.AddField(
            model_name='payment',
            name='book_id',
            field=models.CharField(default='exit', max_length=255),
            preserve_default=False,
        ),
    ]
