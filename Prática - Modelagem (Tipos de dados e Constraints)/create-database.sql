CREATE DATABASE "pratica_modelagem2";

CREATE TABLE "users" (
    "id" SERIAL PRIMARY KEY NOT NULL,
    "name" TEXT NOT NULL,
    "email" TEXT NOT NULL UNIQUE,
    "password" TEXT NOT NULL
);

CREATE TABLE "cart" (
    "id" SERIAL PRIMARY KEY NOT NULL,
    "userid" INTEGER NOT NULL REFERENCES "users"("id");
    "status" ENUM("criada", "paga", "entregue", "cancelada") NOT NULL,
    "date" TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);