# Project_3 - Cole, Rick, Ashby #

# Project_3 - Fate is inevitable
This project aims to analyze mortality data from mortality.org, focusing on birth rates, death rates, and population statistics. Key tables, including a life table, total population by age, death count by age and gender, births per year, life expectancy at birth, and death rate by age and gender, will be created during the analysis.

Datasets:
Life table (bltper_1x1)
Total population by age 1x1 (population)
Death count by age and gender 1x1 (deaths_1x1)
Births per year (Births)

Transformation
Transformations include creating primary keys, limiting years to the past 50, formatting numerical data, rounding, renaming variables, and dropping unneeded variables. Additional health indicators will be incorporated for a more nuanced analysis.
Platforms and Libraries

Data will be ingested using Python, stored in SQL, and read/displayed using Python. Libraries include SQLAlchemy for database interaction, Pandas for data analysis, Pandera for data processing, Matplotlib for data visualization, and Seaborn for advanced matplotlib function.

-Data Interaction-
Data Analysis (Python/Pandas):
We used the Pandas library to read data from various sources (e.g., CSV files, Excel sheets, databases) into a Pandas DataFrames.

Storing Data in SQL (SQLAlchemy):
Utilized the SQLAlchemy library to connect to your SQL database and store the Pandas DataFrame in a SQL table.

Data Processing and Validation (Pandera):
We used Pandera to define and validate data schemas, ensuring data quality and consistency.

Data Visualization (Matplotlib and Seaborn):
Use Matplotlib and Seaborn for creating visualizations and gaining insights from the data.

From here we display results!
In working on this project, we're making sure to do things the right way when it comes to ethics. Privacy is a top priority, ensuring that individual data stays confidential. We're upfront about how we handle data, making sure it's clear for everyone. When using external data, we're cautious, checking for reliability and treating it responsibly. Recognizing potential biases, we aim for fairness in our analysis. Given the potential impact on health policies, we're committed to sharing findings accurately and responsibly. This project is not just about data; it's about respecting privacy, transparency, and adhering to ethical standards.

Sources:
The goal of this project is to access and analyze the mortality data from mortality.org