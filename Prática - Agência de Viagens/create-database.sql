CREATE DATABASE "pratica_modelagem3";

CREATE TABLE "companies" (
    "id" SERIAL PRIMARY KEY NOT NULL,
    "name" TEXT NOT NULL,
    "code" VARCHAR(3) NOT NULL UNIQUE
);

CREATE TABLE "airports" (
    "id" SERIAL PRIMARY KEY NOT NULL,
    "name" TEXT NOT NULL,
    "code" VARCHAR(3) NOT NULL UNIQUE
);

CREATE TABLE "flights" (
    "id" SERIAL PRIMARY KEY NOT NULL,
    "code" TEXT NOT NULL UNIQUE,
    "company_id" INTEGER NOT NULL REFERENCES "companies"("id"),
    "origin_id" INTEGER NOT NULL REFERENCES "airports"("id"),
    "destiny_id" INTEGER NOT NULL REFERENCES "airports"("id"),
    "time_depart" TIME WITH TIME ZONE NOT NULL,
    "time_arrival" TIME WITH TIME ZONE,
);