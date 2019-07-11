#!/bin/sh

MAP_END=_map.yaml
YAML_NAME=$1$MAP_END
YAML_PATH=`echo $1 |sed 's/.*\/\([^\/]*\)$/\1/'`
sed -i '1c image: '"$YAML_PATH"'_map.pgm' $YAML_NAME
