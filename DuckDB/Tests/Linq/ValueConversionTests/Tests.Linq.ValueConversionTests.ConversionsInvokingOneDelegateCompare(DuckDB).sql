-- DuckDB
SELECT
	r.Id
FROM
	Issue5975Row r
WHERE
	r.Plain = r."Date"

