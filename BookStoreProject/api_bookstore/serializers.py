from rest_framework import serializers

from .models import Author, Book

from django.contrib.auth.models import User


class UserSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = User
        fields = ['id', 'username']


class AuthorNameSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:

        model = Author
        fields = ['id', 'name']


class AuthorSerializer(serializers.HyperlinkedModelSerializer):
    added_by = UserSerializer()

    class Meta:
        model = Author
        fields = ('id', 'name', 'created_date', 'added_by')


class BookSerializer(serializers.HyperlinkedModelSerializer):
    added_by = UserSerializer()

    class Meta:
        model = Book
        fields = ('id', 'title', 'description', 'created_date', 'author', 'added_by')

