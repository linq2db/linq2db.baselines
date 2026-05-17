-- DuckDB

SELECT
	current_database()

-- DuckDB

SELECT
	current_schema()
FROM
	LinqDataTypes t1
LIMIT 1

-- DuckDB

SELECT
	t1.ID,
	t1."Value"
FROM
	TestData.main.Issue681Table t1

