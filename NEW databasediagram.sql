-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "annual_df" (
    "Year" INTEGER   NOT NULL,
    "Female" INTEGER   NOT NULL,
    "Male" INTEGER   NOT NULL,
    "Total" INTEGER   NOT NULL,
    "Numbers_(thousands)" INTEGER   NOT NULL,
    "Median_Income_Current_dollars" INTEGER   NOT NULL,
    "Median_Income_2022_dollars" INTEGER   NOT NULL,
    "Mean_Income_Current_dollars" INTEGER   NOT NULL,
    "Mean_Income_2022_dollars" INTEGER   NOT NULL,
    "Average_size_of_household" FLOAT   NOT NULL,
    "Population_in_thousands" INTEGER   NOT NULL,
    "Per_capita_income_Current_dollars" INTEGER   NOT NULL,
    "Per_capita_income_2022_dollars" INTEGER   NOT NULL,
    CONSTRAINT "pk_annual_df" PRIMARY KEY (
        "Year"
     )
);

CREATE TABLE "annual_x_age_df" (
    "Annual_Death_Rate" FLOAT   NOT NULL,
    "Probability_of_Death" FLOAT   NOT NULL,
    "Number_of_Deaths" INTEGER   NOT NULL,
    "Life_Expectancy" INTEGER   NOT NULL,
    "ID" STRING   NOT NULL,
    "Female_Deaths" FLOAT   NOT NULL,
    "Male_Deaths" FLOAT   NOT NULL,
    "Total_Deaths" FLOAT   NOT NULL,
    "Year" INTEGER   NOT NULL,
    "Age" INTEGER   NOT NULL,
    "Female_population" FLOAT   NOT NULL,
    "Male_population" FLOAT   NOT NULL,
    "Total_population" FLOAT   NOT NULL,
    CONSTRAINT "pk_annual_x_age_df" PRIMARY KEY (
        "ID"
     )
);

ALTER TABLE "annual_x_age_df" ADD CONSTRAINT "fk_annual_x_age_df_Year" FOREIGN KEY("Year")
REFERENCES "annual_df" ("Year");

