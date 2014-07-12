strenuus-docker-influxdb
=====================
InfluxDB image


Usage
-----

To create the image `strenuus/influxdb`, execute the following command on strenuus-docker-influxdb folder:

    docker build -t strenuus/influxdb .

You can now push new image to the registry:

    docker push strenuus/influxdb


Running your InfluxDB image
--------------------------

Start your image binding the external ports `8083` and `8086` in all interfaces to your container. Ports `8090` and `8099` are only used for clustering and should not be exposed to the internet.

    docker run -d -p 8083:8083 -p 8086:8086 --expose 8090 --expose 8099 strenuus/influxdb


Configuring your InfluxDB
-------------------------
Open your browse to access `localhost:8083` to configure InfluxDB. Fill the port which maps to `8086`. The default credential is `root:root`. Please change it as soon as possible.

Alternatively, you can use RESTful API to talk to InfluxDB on port `8086`
