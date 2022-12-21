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
    "customerId" INTEGER REFERENCES "customers"("id") NOT NULL,
    "accountNumber" TEXT NOT NULL UNIQUE,
    "agency" TEXT NOT NULL,
    "openDate" DATE NOT NULL DEFAULT NOW(),
    "closeDate" DATE
);

CREATE TABLE "transactions" (
    "id" SERIAL PRIMARY KEY NOT NULL,
    "bankAccountId" INTEGER NOT NULL REFERENCES "bankAccount"("id"),
    "amount" INTEGER NOT NULL,
    "type" ENUM("deposit", "withdraw") NOT NULL,
    "time" TIMESTAMP NOT NULL DEFAULT NOW(),
    "description" TEXT,
    "cancelled" BOOLEAN NOT NULL
);