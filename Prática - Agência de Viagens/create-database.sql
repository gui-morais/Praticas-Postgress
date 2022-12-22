CREATE DATABASE "pratica_modelagem3";

CREATE TABLE "companies" (
    "id" SERIAL PRIMARY KEY NOT NULL,
    "name" TEXT NOT NULL,
    "code" VARCHAR(3) NOT NULL UNIQUE
);