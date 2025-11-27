#!/bin/bash
engine=$(ibus engine)
case "$engine" in
  xkb:us::eng)
    echo "US"
    ;;
  avro)
    echo "Avro"
    ;;
  *)
    echo "$engine"
    ;;
esac
