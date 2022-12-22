CREATE DATABASE "pratica_modelagem3";

CREATE TABLE "students" (
    "id" SERIAL PRIMARY KEY NOT NULL,
    "name" TEXT NOT NULL,
    "cpf" VARCHAR(11) NOT NULL UNIQUE,
    "email" TEXT NOT NULL UNIQUE
);

CREATE TABLE "classes" (
    "id" SERIAL PRIMARY KEY NOT NULL,
    "code" TEXT NOT NULL UNIQUE
);

CREATE TABLE "classes_registration" (
    "id" SERIAL PRIMARY KEY NOT NULL,
    "student_id" INTEGER NOT NULL REFERENCES "students"("id"),
    "class_id" INTEGER NOT NULL REFERENCES "classes"("id"),
    "date_entry" DATE NOT NULL,
    "date_exit" DATE
);

CREATE TABLE "modules" (
    "id" SERIAL PRIMARY KEY NOT NULL,
    "name" TEXT NOT NULL UNIQUE
);

CREATE TABLE "projects" (
    "id" SERIAL PRIMARY KEY NOT NULL,
    "name" TEXT NOT NULL UNIQUE,
    "module_id" INTEGER NOT NULL REFERENCES "modules"("id")
);

CREATE TABLE "projects_deliveries" (
    "id" SERIAL PRIMARY KEY NOT NULL,
    "student_id" INTEGER NOT NULL REFERENCES "students"("id"),
    "project_id" INTEGER NOT NULL REFERENCES "projects"("id"),
    "delivery_time" TIME WITH TIME ZONE NOT NULL,
    "grade" ENUM("Abaixo das expectativas", "Dentro das Expectativas", "Acima das Expectativas") NOT NULL
);