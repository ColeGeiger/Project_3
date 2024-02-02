-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/5dhc4K
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "births_df" (
    "Year" int   NOT NULL,
    "Female" int   NOT NULL,
    "Male" int   NOT NULL,
    "Total" int   NOT NULL,
    CONSTRAINT "pk_births_df" PRIMARY KEY (
        "Year"
     )
);

CREATE TABLE "deaths_df" (
    "Year" int   NOT NULL,
    "Age" int   NOT NULL,
    "Female" int   NOT NULL,
    "Male" int   NOT NULL,
    "total" float   NOT NULL,
    CONSTRAINT "pk_deaths_df" PRIMARY KEY (
        "Year"
     )
);

CREATE TABLE "bltper_df" (
    "Year" int   NOT NULL,
    "Age" int   NOT NULL,
    "Annual_Death_Rate" float   NOT NULL,
    "Probability_of_Death" float   NOT NULL,
    "Number_of_Deaths" int   NOT NULL,
    "Life_Expectancy" int   NOT NULL,
    CONSTRAINT "pk_bltper_df" PRIMARY KEY (
        "Year"
     )
);

CREATE TABLE "population_df" (
    "Year" int   NOT NULL,
    "Age" int   NOT NULL,
    "Female" float   NOT NULL,
    "Male" float   NOT NULL,
    "Total" float   NOT NULL,
    CONSTRAINT "pk_population_df" PRIMARY KEY (
        "Year"
     )
);

CREATE TABLE "income_df" (
    "Year" int   NOT NULL,
    "Number" int   NOT NULL,
    "Median_Income_Current" int   NOT NULL,
    "Median_Income_2022" int   NOT NULL,
    "Mean_Income_Current" int   NOT NULL,
    "Mean_Income_2022" int   NOT NULL,
    "Average_Size_Household" float   NOT NULL,
    CONSTRAINT "pk_income_df" PRIMARY KEY (
        "Year"
     )
);

CREATE TABLE "per_capita_df" (
    "Year" int   NOT NULL,
    "Population_in_thousands" int   NOT NULL,
    "Per_capita_income_Current_dollars" int   NOT NULL,
    "Per_capita_income_2022_dollar" int   NOT NULL,
    CONSTRAINT "pk_per_capita_df" PRIMARY KEY (
        "Year"
     )
);

ALTER TABLE "deaths_df" ADD CONSTRAINT "fk_deaths_df_Age" FOREIGN KEY("Age")
REFERENCES "population_df" ("Age");

ALTER TABLE "bltper_df" ADD CONSTRAINT "fk_bltper_df_Year" FOREIGN KEY("Year")
REFERENCES "births_df" ("Year");

ALTER TABLE "bltper_df" ADD CONSTRAINT "fk_bltper_df_Age" FOREIGN KEY("Age")
REFERENCES "population_df" ("Age");

ALTER TABLE "income_df" ADD CONSTRAINT "fk_income_df_Year" FOREIGN KEY("Year")
REFERENCES "population_df" ("Year");

ALTER TABLE "per_capita_df" ADD CONSTRAINT "fk_per_capita_df_Year" FOREIGN KEY("Year")
REFERENCES "births_df" ("Year");

