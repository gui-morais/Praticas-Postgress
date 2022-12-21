CREATE DATABASE "pratica_modelagem";

CREATE TABLE "customers" (
    "id" SERIAL PRIMARY KEY NOT NULL,
    "fullName" TEXT NOT NULL,
    "cpf" VARCHAR(11) UNIQUE NOT NULL,
    "email" TEXT UNIQUE NOT NULL,
    "password" TEXT NOT NULL
);