-- DuckDB
SELECT
	r.Id,
	CAST(NULL AS BOOLEAN)
FROM
	NullableFlagTable r
ORDER BY
	r.Id

