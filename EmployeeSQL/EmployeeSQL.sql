-- EmployeesSQL

-- Dropping tables if they exist
DROP TABLE IF EXISTS "Departments";
DROP TABLE IF EXISTS "Department_Employee";
DROP TABLE IF EXISTS "Manager";
DROP TABLE IF EXISTS "Employees";
DROP TABLE IF EXISTS "Salaries";
DROP TABLE IF EXISTS "Title";

-- Creating tables

CREATE TABLE "Departments" (
    "dept_no" VARCHAR   NOT NULL,
    "dept_name" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "Department_Employee" (
    "id" serial   NOT NULL,
    "empl_no" INT   NOT NULL,
    "dept_no" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Department_Employee" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "Manager" (
    "id" serial   NOT NULL,
    "dept_no" VARCHAR   NOT NULL,
    "empl_no" INT   NOT NULL,
    CONSTRAINT "pk_Manager" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "Employees" (
    "empl_no" INT   NOT NULL,
    "empl_title_id" VARCHAR   NOT NULL,
    "birth_date" DATE   NOT NULL,
    "first_name" VARCHAR   NOT NULL,
    "last_name" VARCHAR   NOT NULL,
    "sex" VARCHAR   NOT NULL,
    "hire_date" DATE   NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "empl_no"
     )
);

CREATE TABLE "Salaries" (
    "id" serial   NOT NULL,
    "empl_no" INT   NOT NULL,
    "salary" INT   NOT NULL,
    CONSTRAINT "pk_Salaries" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "Title" (
    "title_id" VARCHAR   NOT NULL,
    "title" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Title" PRIMARY KEY (
        "title_id"
     )
);

-- Defining foreign keys

ALTER TABLE "Department_Employee" ADD CONSTRAINT "fk_Department_Employee_empl_no" FOREIGN KEY("empl_no")
REFERENCES "Employees" ("empl_no");

ALTER TABLE "Department_Employee" ADD CONSTRAINT "fk_Department_Employee_dept_no" FOREIGN KEY("dept_no")
REFERENCES "Departments" ("dept_no");

ALTER TABLE "Manager" ADD CONSTRAINT "fk_Manager_dept_no" FOREIGN KEY("dept_no")
REFERENCES "Departments" ("dept_no");

ALTER TABLE "Manager" ADD CONSTRAINT "fk_Manager_empl_no" FOREIGN KEY("empl_no")
REFERENCES "Employees" ("empl_no");

ALTER TABLE "Employees" ADD CONSTRAINT "fk_Employees_empl_title_id" FOREIGN KEY("empl_title_id")
REFERENCES "Title" ("title_id");

ALTER TABLE "Salaries" ADD CONSTRAINT "fk_Salaries_empl_no" FOREIGN KEY("empl_no")
REFERENCES "Employees" ("empl_no");
