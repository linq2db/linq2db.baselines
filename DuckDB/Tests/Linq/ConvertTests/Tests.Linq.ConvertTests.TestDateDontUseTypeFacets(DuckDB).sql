-- DuckDB
SELECT
	g_2.Date_1,
	COUNT(*)
FROM
	(
		SELECT
			CAST(g_1.CreatedOnUtc AS DATE) as Date_1
		FROM
			DateTimePrecisionTable g_1
	) g_2
GROUP BY
	g_2.Date_1

-- DuckDB
SELECT
	t1.CreatedOnUtc
FROM
	DateTimePrecisionTable t1

