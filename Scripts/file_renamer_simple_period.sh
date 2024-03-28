for file in *.jpg; do
    newname=$(echo "$file" | awk '{ gsub(/ /, "."); gsub(/[^a-zA-Z0-9.-]/, ""); print tolower($0); }')
    mv "$file" "$newname"
done
