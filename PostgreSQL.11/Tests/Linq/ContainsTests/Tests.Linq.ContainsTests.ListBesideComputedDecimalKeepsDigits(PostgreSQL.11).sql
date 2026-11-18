-- PostgreSQL.11 PostgreSQL
SELECT
	COUNT(*)
FROM
	"ComputedDecimalRow" r
WHERE
	Abs(r."Fine") IN (1.000000000005)

-- PostgreSQL.11 PostgreSQL
SELECT
	COUNT(*)
FROM
	"ComputedDecimalRow" r
WHERE
	Abs(r."Fine") IN (1.000000000005)

-- PostgreSQL.11 PostgreSQL
SELECT
	COUNT(*)
FROM
	"ComputedDecimalRow" r
WHERE
	Abs(r."Wide") IN (12345678901234.50)

-- PostgreSQL.11 PostgreSQL
SELECT
	COUNT(*)
FROM
	"ComputedDecimalRow" r
WHERE
	Abs(r."Wide") IN (12345678901234.50)

-- PostgreSQL.11 PostgreSQL
SELECT
	COUNT(*)
FROM
	"ComputedDecimalRow" r
WHERE
	CASE
		WHEN r."Fine"::decimal * 2 = ROUND(r."Fine"::decimal * 2, 2) AND r."Fine"::decimal <> ROUND(r."Fine"::decimal, 2)
			THEN ROUND(r."Fine"::decimal / 2, 2) * 2
		ELSE ROUND(r."Fine"::decimal, 2)
	END::decimal(18, 12) = 1.004

-- PostgreSQL.11 PostgreSQL
SELECT
	COUNT(*)
FROM
	"ComputedDecimalRow" r
WHERE
	CASE
		WHEN r."Fine"::decimal * 2 = ROUND(r."Fine"::decimal * 2, 2) AND r."Fine"::decimal <> ROUND(r."Fine"::decimal, 2)
			THEN ROUND(r."Fine"::decimal / 2, 2) * 2
		ELSE ROUND(r."Fine"::decimal, 2)
	END::decimal(18, 12) IN (1.004)

-- PostgreSQL.11 PostgreSQL
SELECT
	COUNT(*)
FROM
	"ComputedDecimalRow" r
WHERE
	CASE
		WHEN r."Fine"::decimal * 2 = ROUND(r."Fine"::decimal * 2, 2) AND r."Fine"::decimal <> ROUND(r."Fine"::decimal, 2)
			THEN ROUND(r."Fine"::decimal / 2, 2) * 2
		ELSE ROUND(r."Fine"::decimal, 2)
	END::decimal(18, 12) IN (1.004)

