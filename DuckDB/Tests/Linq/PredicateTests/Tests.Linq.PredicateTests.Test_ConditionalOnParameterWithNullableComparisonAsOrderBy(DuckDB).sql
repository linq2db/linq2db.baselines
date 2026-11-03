-- DuckDB
SELECT
	r.Id
FROM
	NullableFlagTable r
ORDER BY
	r.A = r.B OR r.A IS NULL AND r.B IS NULL,
	r.Id

