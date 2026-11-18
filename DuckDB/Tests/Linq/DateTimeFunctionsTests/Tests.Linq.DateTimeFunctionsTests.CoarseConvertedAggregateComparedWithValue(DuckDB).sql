-- DuckDB
SELECT
	r."Value"
FROM
	CoarseConvertedRow r
LIMIT 2

-- DuckDB
DECLARE $value TIMESTAMP -- DateTime
SET     $value = '2026-06-01 09:00:00.000000'::TIMESTAMP

SELECT
	COUNT(*)
FROM
	CoarseConvertedRow r
WHERE
	r."Value" = $value

-- DuckDB
DECLARE $value TIMESTAMP -- DateTime
SET     $value = '2026-06-01 09:00:00.000000'::TIMESTAMP

SELECT
	COUNT(*)
FROM
	(
		SELECT
			g_1.Id
		FROM
			CoarseConvertedRow g_1
		GROUP BY
			g_1.Id
		HAVING
			MAX(g_1."Value") = $value
	) t1

-- DuckDB
DECLARE $CoarseValue TIMESTAMP -- DateTime
SET     $CoarseValue = '2026-06-01 09:00:00.000000'::TIMESTAMP

SELECT
	COUNT(*)
FROM
	(
		SELECT
			g_1.Id
		FROM
			CoarseConvertedRow g_1
		GROUP BY
			g_1.Id
		HAVING
			MAX(g_1."Value") = $CoarseValue
	) t1

-- DuckDB
DECLARE $day DATE -- Date
SET     $day = '2026-05-31 00:00:00.000000'::TIMESTAMP

SELECT
	COUNT(*)
FROM
	(
		SELECT
			g_1.Id
		FROM
			CoarseConvertedRow g_1
		GROUP BY
			g_1.Id
		HAVING
			MIN(g_1."Day") = $day
	) t1

-- DuckDB
DECLARE $CoarseConvertedDay DATE -- Date
SET     $CoarseConvertedDay = '2026-05-31 00:00:00.000000'::TIMESTAMP

SELECT
	COUNT(*)
FROM
	(
		SELECT
			g_1.Id
		FROM
			CoarseConvertedRow g_1
		GROUP BY
			g_1.Id
		HAVING
			MIN(g_1."Day") = $CoarseConvertedDay
	) t1

-- DuckDB
SELECT
	COUNT(*)
FROM
	(
		SELECT
			MAX(g_1."Value") as Max_1
		FROM
			CoarseConvertedRow g_1
		GROUP BY
			g_1.Id
	) t1
WHERE
	t1.Max_1 IN ('2026-06-01 09:00:00.000000'::TIMESTAMP)

