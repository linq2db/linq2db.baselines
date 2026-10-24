-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	COUNT(*)
FROM
	"ComputedDecimalRow" r
WHERE
	Abs(r."Fine") IN (1.000000000005)

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	COUNT(*)
FROM
	"ComputedDecimalRow" r
WHERE
	Abs(r."Fine") IN (1.000000000005)

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	COUNT(*)
FROM
	"ComputedDecimalRow" r
WHERE
	Abs(r."Wide") IN (12345678901234.50)

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	COUNT(*)
FROM
	"ComputedDecimalRow" r
WHERE
	Abs(r."Wide") IN (12345678901234.50)

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	COUNT(*)
FROM
	"ComputedDecimalRow" r
WHERE
	CASE
		WHEN r."Fine" * 2 = ROUND(r."Fine" * 2, 2) AND r."Fine" <> ROUND(r."Fine", 2)
			THEN ROUND(r."Fine" / 2, 2) * 2
		ELSE ROUND(r."Fine", 2)
	END = 1.004

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	COUNT(*)
FROM
	"ComputedDecimalRow" r
WHERE
	CASE
		WHEN r."Fine" * 2 = ROUND(r."Fine" * 2, 2) AND r."Fine" <> ROUND(r."Fine", 2)
			THEN ROUND(r."Fine" / 2, 2) * 2
		ELSE ROUND(r."Fine", 2)
	END IN (1.004)

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	COUNT(*)
FROM
	"ComputedDecimalRow" r
WHERE
	CASE
		WHEN r."Fine" * 2 = ROUND(r."Fine" * 2, 2) AND r."Fine" <> ROUND(r."Fine", 2)
			THEN ROUND(r."Fine" / 2, 2) * 2
		ELSE ROUND(r."Fine", 2)
	END IN (1.004)

