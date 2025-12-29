# Just Use Postgres

Following along withe the book, [Just Use Postgres](https://www.manning.com/books/just-use-postgres) by Denis Magda.

See the chapter directories for more information

## Getting Started/Cheat Sheet

What following is a cheat sheet and summary of what I want to remember to learn.

### Using postgres in docker

- starting Postgres in docker

    ```
    docker run --name postgres -e POSTGRES_USER=postgres -e POSTGRES_PASSWORD=password -p 5432:5432 -v postgres-volume:/var/lib/postgresql/data -d postgres:latest
    ```

- We can specify the database name, instead of using the deafult `postgres` database with `POSTGRES_DB` env var.

- connect to the postgres container with the `psql` CLI

```
docker exec -it postgres psql -U postgres
```
