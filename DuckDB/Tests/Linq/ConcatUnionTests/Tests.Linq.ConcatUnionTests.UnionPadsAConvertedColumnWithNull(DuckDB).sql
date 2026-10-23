-- DuckDB
SELECT
	x.Id,
	x.Flag
FROM
	ConvertedFlagRow x
UNION
SELECT
	x_1.Id,
	CAST(NULL AS VARCHAR)
FROM
	ConvertedFlagRow x_1

