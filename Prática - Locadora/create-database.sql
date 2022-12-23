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

CREATE TABLE "movies" (
    "id" SERIAL PRIMARY KEY NOT NULL,
    "title" TEXT NOT NULL UNIQUE,
    "category_id" INTEGER NOT NULL REFERENCES "categories"("id")
);

CREATE TABLE "movies_actors" (
    "id" SERIAL PRIMARY KEY NOT NULL,
    "movie_id" INTEGER NOT NULL REFERENCES "movies"("id"),
    "actor_id" INTEGER NOT NULL REFERENCES "actors"("id")
);

CREATE TABLE "disks" (
    "id" SERIAL PRIMARY KEY NOT NULL,
    "code" TEXT NOT NULL UNIQUE,
    "barcode" TEXT NOT NULL UNIQUE,
    "movie_id" INTEGER NOT NULL REFERENCES "movies"("id")
);

CREATE TABLE "states" (
    "id" SERIAL PRIMARY KEY NOT NULL,
    "name" TEXT NOT NULL,
    "country_id" INTEGER NOT NULL REFERENCES "countries"("id")
);

CREATE TABLE "cities" (
    "id" SERIAL PRIMARY KEY NOT NULL,
    "name" TEXT NOT NULL,
    "state_id" INTEGER NOT NULL REFERENCES "states"("id")
);