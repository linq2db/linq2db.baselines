-- DuckDB
SELECT
	CAST(r.A + r.B AS DECIMAL)
FROM
	DecimalTable r
LIMIT 2

