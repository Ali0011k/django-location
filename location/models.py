from django.db import models
from location_field.models.plain import PlainLocationField
from django.contrib.gis.geos import Point


class Place(models.Model):
    country = models.CharField(max_length=255, default="")
    city = models.CharField(max_length=255)
    location = PlainLocationField(
        based_fields=["country", "city",], zoom=10, default=Point(51.3890, 35.6892)
    )
