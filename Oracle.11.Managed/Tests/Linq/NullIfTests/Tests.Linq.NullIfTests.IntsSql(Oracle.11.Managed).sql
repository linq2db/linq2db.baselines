-- Oracle.11.Managed Oracle11

SELECT
	NULLIF(s."Int", 2)
FROM
	"Src" s
ORDER BY
	s."Int"

-- Oracle.11.Managed Oracle11

SELECT
	COUNT(*)
FROM
	"Src" x
WHERE
	x."Int" = 2

-- Oracle.11.Managed Oracle11

SELECT
	COUNT(*)
FROM
	"Src" x
WHERE
	x."Int" <> 2

-- Oracle.11.Managed Oracle11

SELECT
	NULLIF(s."Int", 4)
FROM
	"Src" s
ORDER BY
	s."Int"

-- Oracle.11.Managed Oracle11

SELECT
	COUNT(*)
FROM
	"Src" x
WHERE
	x."Int" = 4

-- Oracle.11.Managed Oracle11

SELECT
	COUNT(*)
FROM
	"Src" x
WHERE
	x."Int" <> 4

-- Oracle.11.Managed Oracle11

SELECT
	s."Int"
FROM
	"Src" s
ORDER BY
	s."Int"

-- Oracle.11.Managed Oracle11

SELECT
	COUNT(*)
FROM
	"Src" x
WHERE
	1 = 0

-- Oracle.11.Managed Oracle11

SELECT
	COUNT(*)
FROM
	"Src" x

-- Oracle.11.Managed Oracle11

SELECT
	NULLIF(s."NullableInt", 2)
FROM
	"Src" s
ORDER BY
	s."Int"

-- Oracle.11.Managed Oracle11

SELECT
	COUNT(*)
FROM
	"Src" x
WHERE
	x."NullableInt" = 2 OR x."NullableInt" IS NULL

-- Oracle.11.Managed Oracle11

SELECT
	COUNT(*)
FROM
	"Src" x
WHERE
	NOT (x."NullableInt" = 2 OR x."NullableInt" IS NULL)

-- Oracle.11.Managed Oracle11

SELECT
	NULLIF(s."NullableInt", 4)
FROM
	"Src" s
ORDER BY
	s."Int"

-- Oracle.11.Managed Oracle11

SELECT
	COUNT(*)
FROM
	"Src" x
WHERE
	x."NullableInt" = 4 OR x."NullableInt" IS NULL

-- Oracle.11.Managed Oracle11

SELECT
	COUNT(*)
FROM
	"Src" x
WHERE
	NOT (x."NullableInt" = 4 OR x."NullableInt" IS NULL)

-- Oracle.11.Managed Oracle11

SELECT
	s."NullableInt"
FROM
	"Src" s
ORDER BY
	s."Int"

-- Oracle.11.Managed Oracle11

SELECT
	COUNT(*)
FROM
	"Src" x
WHERE
	x."NullableInt" IS NULL

-- Oracle.11.Managed Oracle11

SELECT
	COUNT(*)
FROM
	"Src" x
WHERE
	x."NullableInt" IS NOT NULL

