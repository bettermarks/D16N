#!/bin/bash
# converts all puml files to svg

BASEDIR=$(dirname "$0")
rm $BASEDIR/*.svg
for FILE in $BASEDIR/*.puml; do
  echo Converting $FILE..
  FILE_SVG=${FILE//puml/svg}
  cat $FILE | docker run --rm -i think/plantuml -nometadata -svg > $FILE_SVG
  docker run --rm -v $PWD:/diagrams productionwentdown/ubuntu-inkscape inkscape /diagrams/$FILE_SVG --export-area-page --without-gui &> /dev/null
done
echo Done
