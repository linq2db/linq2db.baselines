-- DuckDB
SELECT
	r."Value"
FROM
	CoarseConvertedRow r
LIMIT 2

-- DuckDB
DECLARE $value  -- DateTime
SET     $value = '2026-06-01 09:00:00.000000'::TIMESTAMP

SELECT
	COUNT(*)
FROM
	CoarseConvertedRow r
WHERE
	r."Value" = $value

-- DuckDB
DECLARE $value  -- DateTime
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
DECLARE $CoarseValue  -- DateTime
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
DECLARE $day  -- Date
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
DECLARE $CoarseConvertedDay  -- Date
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

