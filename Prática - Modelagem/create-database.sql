CREATE DATABASE "pratica_modelagem";

CREATE TABLE "customers" (
    "id" SERIAL PRIMARY KEY NOT NULL,
    "fullName" TEXT NOT NULL,
    "cpf" VARCHAR(11) UNIQUE NOT NULL,
    "email" TEXT UNIQUE NOT NULL,
    "password" TEXT NOT NULL
);

CREATE TABLE "bankAccount" (
    "id" SERIAL PRIMARY KEY NOT NULL,
    "customerId" INTEGER REFERENCES customers(id) NOT NULL,
    "accountNumber" TEXT NOT NULL UNIQUE,
    "agency" TEXT NOT NULL,
    "openDate" DATE NOT NULL DEFAULT NOW(),
    "closeDate" DATE
);