CREATE DATABASE "prática_modelagem4";

CREATE TABLE "countries" (
    "id" SERIAL PRIMARY KEY NOT NULL,
    "name" TEXT NOT NULL UNIQUE
);

CREATE TABLE "actors" (
    "id" SERIAL PRIMARY KEY NOT NULL,
    "name" TEXT NOT NULL,
    "birthday" DATE NOT NULL,
    "country_id" INTEGER NOT NULL REFERENCES "countries0"("id")
);

CREATE TABLE "categories" (
    "id" SERIAL PRIMARY KEY NOT NULL,
    "name" TEXT NOT NULL UNIQUE
);