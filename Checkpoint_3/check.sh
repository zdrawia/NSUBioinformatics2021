read PY_RES
if (( $(echo "$PY_RES > 0.9" | bc -l) ));
then
    echo "OK!"
else
    echo "not OK..."
fi
