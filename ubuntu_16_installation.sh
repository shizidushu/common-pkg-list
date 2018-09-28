# install script for ubuntu 16
apt-get update

# install fundamental spatial libraries (needed for sf, sp, rgdal, rgeos)
apt-get install -y libudunits2-dev libgdal-dev libgeos-dev libproj-dev 

# install v8, needed for the R package V8 which reverse imports geojsonio and rmapshaper -> tmaptools -> tmap
sudo apt-get -y install ibv8-dev

# install jq, needed for the R package jqr whith reverse imports: geojson -> geojsonio -> rmapshaper -> tmaptools -> tmap
apt-get install -y libjq-dev

# install libraries needed for the R package protolite, which reverse imports: geojson -> geojsonio -> rmapshaper -> tmaptools -> tmap
apt-get install -y libprotobuf-dev protobuf-compiler

# other libraries
apt-get install -y libssl-dev
apt-get install -y libcairo2-dev
