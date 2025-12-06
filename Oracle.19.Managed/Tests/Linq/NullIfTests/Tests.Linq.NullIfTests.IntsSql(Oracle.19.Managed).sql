-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	NULLIF(s."Int", 2)
FROM
	"Src" s
ORDER BY
	s."Int"

-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."Int" = 2

-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."Int" <> 2

-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	NULLIF(s."Int", 4)
FROM
	"Src" s
ORDER BY
	s."Int"

-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."Int" = 4

-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."Int" <> 4

-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	s."Int"
FROM
	"Src" s
ORDER BY
	s."Int"

-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	1 = 0

-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Src" s

-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	NULLIF(s."NullableInt", 2)
FROM
	"Src" s
ORDER BY
	s."Int"

-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."NullableInt" = 2 OR s."NullableInt" IS NULL

-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	NOT (s."NullableInt" = 2 OR s."NullableInt" IS NULL)

-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	NULLIF(s."NullableInt", 4)
FROM
	"Src" s
ORDER BY
	s."Int"

-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."NullableInt" = 4 OR s."NullableInt" IS NULL

-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	NOT (s."NullableInt" = 4 OR s."NullableInt" IS NULL)

-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	s."NullableInt"
FROM
	"Src" s
ORDER BY
	s."Int"

-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."NullableInt" IS NULL

-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."NullableInt" IS NOT NULL

