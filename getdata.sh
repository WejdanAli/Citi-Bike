#!/bin/bash

echo "geting data start!"
for i in $( seq 1 9 ); do
  wget http://witestlab.poly.edu/bikes/20160${i}-citibike-tripdata.zip
  mv 20160${i}-citibike-tripdata.zip ~/citibike/data/20160${i}-citibike-tripdata.zip
  unzip ~/citibike/data/20160${i}-citibike-tripdata.zip
  mv 20160${i}-citibike-tripdata.csv ~/citibike/data/20160${i}-data.csv
done
echo "geting data end!"
