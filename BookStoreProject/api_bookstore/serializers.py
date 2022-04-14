from rest_framework import serializers

from .models import Author, Book

from django.contrib.auth.models import User


class UserSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = User
        fields = ['username']


class AuthorNameSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:

        model = Author
        fields = ['name']


class AuthorSerializer(serializers.HyperlinkedModelSerializer):
    added_by = UserSerializer(read_only=True)

    class Meta:
        model = Author
        fields = ('id', 'name', 'created_date', 'added_by')


class BookSerializer(serializers.HyperlinkedModelSerializer):
    added_by = UserSerializer(read_only=True)
    author = AuthorNameSerializer(read_only=True)

    class Meta:
        model = Book
        fields = ('id', 'title', 'description', 'created_date', 'author', 'added_by')

