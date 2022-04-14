from django.contrib.auth.models import User
from django.db import models
from django.utils import timezone


class Author(models.Model):

    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=100)
    created_date = models.DateTimeField(default=timezone.now)
    added_by = models.ForeignKey(User, on_delete=models.CASCADE)

    def __str__(self):
        return self.name


class Book(models.Model):

    id = models.AutoField(primary_key=True)
    title = models.CharField(max_length=100)
    description = models.CharField(max_length=200)
    created_date = models.DateTimeField(default=timezone.now)
    added_by = models.ForeignKey(User, on_delete=models.CASCADE)
    author = models.ForeignKey(Author, on_delete=models.CASCADE)

    def __str__(self):
        return self.title

