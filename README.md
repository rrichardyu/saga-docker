# Saga Networks Docker Containerization

## Setup

Pull the saga web submodule:

```
git submodule update --init
```

Then, place the Neo4j cypher queries in `/neo4j/db/`.

Create the Docker containers with `docker-compose`:

```
docker-compose build
docker-compose up
```