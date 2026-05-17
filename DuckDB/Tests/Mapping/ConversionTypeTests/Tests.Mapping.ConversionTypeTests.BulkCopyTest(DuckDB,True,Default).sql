-- DuckDB

SELECT
	c_1."column_name"
FROM
	information_schema."columns" c_1
WHERE
	c_1."table_name" = 'TrimTestTable'
ORDER BY
	c_1.ordinal_position

INSERT BULK TrimTestTable(ID, Data)

-- DuckDB

SELECT
	r.ID,
	r."Data"
FROM
	TrimTestTable r
ORDER BY
	r.ID

-- DuckDB

SELECT
	r.ID,
	r."Data"
FROM
	TrimTestTable r
ORDER BY
	r.ID

