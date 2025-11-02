-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	NULLIF(s."String", 'abc')
FROM
	"Src" s
ORDER BY
	s."Int"

-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Src" x
WHERE
	x."String" = 'abc' OR x."String" IS NULL

-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Src" x
WHERE
	NOT (x."String" = 'abc' OR x."String" IS NULL)

-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	NULLIF(s."String", 'xyz')
FROM
	"Src" s
ORDER BY
	s."Int"

-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Src" x
WHERE
	x."String" = 'xyz' OR x."String" IS NULL

-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Src" x
WHERE
	NOT (x."String" = 'xyz' OR x."String" IS NULL)

-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	s."String"
FROM
	"Src" s
ORDER BY
	s."Int"

-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Src" x
WHERE
	x."String" IS NULL

-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Src" x
WHERE
	x."String" IS NOT NULL

-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	NULLIF(s."NullableString", 'abc')
FROM
	"Src" s
ORDER BY
	s."Int"

-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Src" x
WHERE
	x."NullableString" = 'abc' OR x."NullableString" IS NULL

-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Src" x
WHERE
	NOT (x."NullableString" = 'abc' OR x."NullableString" IS NULL)

-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	NULLIF(s."NullableString", 'xyz')
FROM
	"Src" s
ORDER BY
	s."Int"

-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Src" x
WHERE
	x."NullableString" = 'xyz' OR x."NullableString" IS NULL

-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Src" x
WHERE
	NOT (x."NullableString" = 'xyz' OR x."NullableString" IS NULL)

-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	s."NullableString"
FROM
	"Src" s
ORDER BY
	s."Int"

-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Src" x
WHERE
	x."NullableString" IS NULL

-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Src" x
WHERE
	x."NullableString" IS NOT NULL

