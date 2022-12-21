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

CREATE TABLE "creditCards" (
    "id" SERIAL PRIMARY KEY NOT NULL,
    "bankAccountId" INTEGER NOT NULL REFERENCES "bankAccount"("id"),
    "name" TEXT NOT NULL,
    "number" VARCHAR(16) NOT NULL UNIQUE,
    "secutityCode" VARCHAR(3) NOT NULL,
    "expirationMonth" ENUM(1,2,3,4,5,6,7,8,9,10,11,12) NOT NULL,
    "expirationYear" INTEGER NOT NULL,
    "password" TEXT NOT NULL,
    "limit" INTEGER
);

CREATE TABLE "customerPhones" (
    "id" SERIAL PRIMARY KEY NOT NULL,
    "customerId" INTEGER REFERENCES "customers"("id") NOT NULL,
    "number" TEXT NOT NULL UNIQUE,
    "type" ENUM("landline", "mobile") NOT NULL,
);

CREATE TABLE "states" (
    "id" SERIAL PRIMARY KEY NOT NULL,
    "name" TEXT NOT NULL UNIQUE
);

CREATE TABLE "cities" (
    "id" SERIAL PRIMARY KEY NOT NULL,
    "name" TEXT NOT NULL,
    "stateId" INTEGER NOT NULL REFERENCES "states"("id")
);