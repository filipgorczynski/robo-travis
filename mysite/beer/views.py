from django.shortcuts import render
from django.http import HttpResponse


def hello(request, slug):
    slug = slug.title()
    slug = slug[:-1] + slug[-1].upper()
    return HttpResponse('<h1>{0}</h1>'.format(slug))
