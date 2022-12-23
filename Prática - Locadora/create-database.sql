CREATE DATABASE "prática_modelagem4";

CREATE TABLE "countries" (
    "id" SERIAL PRIMARY KEY NOT NULL,
    "name" TEXT NOT NULL UNIQUE
);