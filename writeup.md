In this ETL project, useful information for all drugs in the FDA database was download from http://accessdata.fda.gov in the form of CSV tables. In these two tables, information such as the drugs NDC, brand name, generic name, formulation, and route of administration, as a few examples, was split between them. There was a unique identifier between the two tables, a column called �product_id�, that I could later use as primary key�s and join together on in my PostgreSQL database.

To begin the project, the goal was to build a pandas data-frame for each of my two CSV files with column names more useful for me. To do this, a data-frame for each table was built where any duplicate �product_id� values existed, which were none. All of the columns were renamed using a dictionary within the pd.rename function. The final data-frames, with �product_id� as the index, were restructured to both contain the useful data I wanted and to rid of overlapping columns of datas.

With the structure of my tables figured, I first created a database for this project in my PostgreSQL local server. Using SQL statements, I built the two tables that will contain the data from the data-frames I created. Using SQLalchemy, I connected to my local PostgreSQL database and verified the connection using engine.table_names() with the expectation of seeing the titles of the two tables I made previously. Using pd.to_sql, this connection was used to finally upload the data-frame to my PostgreSQL server. In order to fill some null values with information more important to me, such as the �dea_schedule� table, two update SQL statements were used to replace �dea_schedule� null values with CVI when �product_type_name� contained the word �prescription� and OTC when �product_type_name� contained the word �OTC�. A final query was performed inner joining the two tables on �product_id�. 