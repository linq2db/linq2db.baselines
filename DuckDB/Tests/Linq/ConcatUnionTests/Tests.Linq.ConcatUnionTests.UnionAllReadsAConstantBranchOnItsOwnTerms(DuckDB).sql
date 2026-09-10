-- DuckDB
SELECT
	CAST(NULL AS BOOLEAN),
	x.Id,
	x.Flag
FROM
	ConvertedFlagRow x
UNION ALL
SELECT
	CAST(True AS BOOLEAN),
	x_1.Id,
	CAST(NULL AS VARCHAR)
FROM
	ConvertedFlagRow x_1

