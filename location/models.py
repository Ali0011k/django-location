from django.db import models
from location_field.models.plain import PlainLocationField
from django.contrib.gis.geos import Point


class Place(models.Model):
    city = models.CharField(max_length=255)
    country = models.CharField(max_length=255)
    location = PlainLocationField(
        based_fields=["city", "country"], zoom=10, default=Point(51.3890, 35.6892)
    )
