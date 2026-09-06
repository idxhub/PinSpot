for f in *; do
  [ -f "$f" ] || continue

  lower=$(printf '%s' "$f" | tr '[:upper:]' '[:lower:]')

  if [ "$f" != "$lower" ]; then
    tmp=".__tmp__${RANDOM}_${f}"
    mv -- "$f" "$tmp"
    mv -- "$tmp" "$lower"
    echo "Renamed: $f -> $lower"
  fi
done
