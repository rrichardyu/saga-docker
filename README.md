# Saga Networks Docker Containerization

## Setup

Pull the saga web submodule:

```
git submodule update --init
```

Then, place the Neo4j cypher queries in `/neo4j/db/`. The script will automatically load the cypher queries in lexicographic order. The cypher queries should be processed in this order: saga chapters, gender, nodes, edges.

Create the Docker containers with `docker-compose`:

```
docker-compose build
docker-compose up
```

The Neo4j instance is accessible on port 7687 (browser on port 7474). The default Neo4j credentials are `neo4j:berkeley`.
