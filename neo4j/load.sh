#!/bin/bash

echo "Loading neo4j database"

# cat db/test.txt | cypher-shell -u neo4j -p berkeley > /dev/null

folder_path="db"

for file in "$folder_path"/*.txt; do
    if [ -r "$file" ]; then
        cat "$file" | cypher-shell -u neo4j -p berkeley > /dev/null
        echo "Processed file: $file"
    else
        echo "Error: Unable to read file: $file"
    fi
done

echo "Done loading neo4j database"