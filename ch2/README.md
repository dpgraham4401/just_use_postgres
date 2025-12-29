# Chapter 2

I'll mostly skip recoding stuff in this repo for this chapter since
it's mostly on basic SQL and RDBMS capabilities.


## Creating the DB structure

A DB is the topmost collection of objects, which includes tables, schemas, and other objects.

It's not possible to run queries across databases without a third-party solution.

## Multi-tenant solutions

There are generally 3 approaches to create multi-tenant databases.

1. database-level: each tenant has its own database
2. schema-level: shared database, separate schema for each tenant
3. Shared database, shared schema for all tenants

Database-level is the strongest isolation, and can use
database controlled roles and permissions. However, it can be
hard to manage many databases, and can be resource intensive.
Essentually, requires use of infrastructure as code tools to manage.


### Create database

With postgres, I'm not sure it's possible to only create a database if it doesn't exist.

CREATE DATABASE coffee_chain;

We can then use the `\c` command in psql to connect to the database.

```
\c coffee_chain

```

### Creating Schema

We can use the `\dn` command to list schemas.
By default, postgres creates a `public` schema for us.
everything else, we have to create ourselves.

A schema is a named collection of database objects, 
schemas are really just similar to namespaces. We don't
really gain anything from using schemas except increased organization.

A schema is often a good way to separate different microservices
that share the same database.

#### Using Schemas

Postgres has the concept of a search path, or basically, a current schema.

to set the search path, we can use:

```sql
SET search_path TO schema_name;
```


### Creating Tables

With schemas in the mix, we can create tables like so:

```sql
CREATE TABLE schema_name.table_name (
    column_name data_type constraints,
    ...
);
```

We can use the `\d` psql command to list all created tabase objects.
`\dt`, if we just wast to see tables.


#### Data integrity

Data types are our first line of defense for data integrity.
If we need something more complex than basic data types, we can create
column and table level constraints.

We can use the following constraints:
1. not null constraint
2. unique constraint
3. primary key constraint = unqiue ID for each row
4. foreign key constraint
5. check constraints = custom verification that a column value meets a condition.
6. exclusion constraints (?advanced, skip for now)

### Updating Tables

to update the table, use the `ALTER` command.






