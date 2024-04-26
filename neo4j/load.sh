#!/bin/bash

echo "Loading neo4j database"

# cat db/test.txt | cypher-shell -u neo4j -p berkeley > /dev/null

folder_path="db"

files=$(ls -1 "$folder_path"/*.txt | sort)

for file in $files; do
    if [ -r "$file" ]; then
        cat "$file" | cypher-shell -u neo4j -p berkeley > /dev/null
        # cat "$file" | cypher-shell -u neo4j -p berkeley
        echo "Processed file: $file"
    else
        echo "Error: Unable to read file: $file"
    fi
done

echo "Done loading neo4j database"