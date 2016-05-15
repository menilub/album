package com.opentunities.model

/*
{
 "public_id":"tquyfignx5bxcbsupr6a",
 "version":1375302801,
 "signature":"52ecf23eeb987b3b5a72fa4ade51b1c7a1426a97",
 "width":1920,
 "height":1200,
 "format":"jpg",
 "resource_type":"image",
 "created_at":"2013-07-31T20:33:21Z",
 "bytes":737633,
 "type":"upload",
 "url":
   "http://res.cloudinary.com/demo/image/upload/v1375302801/tquyfignx5bxcbsupr6a.jpg",
 "secure_url":
   "https://res.cloudinary.com/demo/image/upload/v1375302801/tquyfignx5bxcbsupr6a.jpg",
 "etag":"1adf8d2ad3954f6270d69860cb126b24"
}
 */

class Photo {

    String public_id
    String signature
    Integer width
    Integer height
    String format
    String resource_type
    Date created_at
    Long bytes
    String type
    String url
    String secure_url
    String etag

    static constraints = {

    }

    static mapping = {
    }
}
