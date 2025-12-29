# Chapter 2

I'll mostly skip recoding stuff in this repo for this chapter since
it's mostly on basic SQL and RDBMS capabilities.


## Creating the DB structure

A schema is a named collection of database objects, 
schemas are really just similar to namespaces. We don't
really gain anything from using schemas except increased organization.

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
