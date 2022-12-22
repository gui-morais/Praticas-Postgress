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

CREATE TABLE "categories" (
    "id" SERIAL PRIMARY KEY NOT NULL,
    "name" TEXT NOT NULL UNIQUE
);

CREATE TABLE "sizes" (
    "id" SERIAL PRIMARY KEY NOT NULL,
    "name" TEXT NOT NULL UNIQUE
);

CREATE TABLE "products" (
    "id" SERIAL PRIMARY KEY NOT NULL,
    "name" TEXT NOT NULL,
    "price" INTEGER NOT NULL,
    "categoryId" INTEGER NOT NULL REFERENCES "categories"("id"),
    "sizeId" INTEGER NOT NULL REFERENCES "sizes"("id")
);

CREATE TABLE "photos" (
    "id" SERIAL PRIMARY KEY NOT NULL,
    "url" TEXT NOT NULL
)