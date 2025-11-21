-- Oracle.11.Managed Oracle11

SELECT
	NULLIF(s."String", 'abc')
FROM
	"Src" s
ORDER BY
	s."Int"

-- Oracle.11.Managed Oracle11

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."String" = 'abc' OR s."String" IS NULL

-- Oracle.11.Managed Oracle11

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	NOT (s."String" = 'abc' OR s."String" IS NULL)

-- Oracle.11.Managed Oracle11

SELECT
	NULLIF(s."String", 'xyz')
FROM
	"Src" s
ORDER BY
	s."Int"

-- Oracle.11.Managed Oracle11

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."String" = 'xyz' OR s."String" IS NULL

-- Oracle.11.Managed Oracle11

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	NOT (s."String" = 'xyz' OR s."String" IS NULL)

-- Oracle.11.Managed Oracle11

SELECT
	s."String"
FROM
	"Src" s
ORDER BY
	s."Int"

-- Oracle.11.Managed Oracle11

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."String" IS NULL

-- Oracle.11.Managed Oracle11

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."String" IS NOT NULL

-- Oracle.11.Managed Oracle11

SELECT
	NULLIF(s."NullableString", 'abc')
FROM
	"Src" s
ORDER BY
	s."Int"

-- Oracle.11.Managed Oracle11

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."NullableString" = 'abc' OR s."NullableString" IS NULL

-- Oracle.11.Managed Oracle11

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	NOT (s."NullableString" = 'abc' OR s."NullableString" IS NULL)

-- Oracle.11.Managed Oracle11

SELECT
	NULLIF(s."NullableString", 'xyz')
FROM
	"Src" s
ORDER BY
	s."Int"

-- Oracle.11.Managed Oracle11

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."NullableString" = 'xyz' OR s."NullableString" IS NULL

-- Oracle.11.Managed Oracle11

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	NOT (s."NullableString" = 'xyz' OR s."NullableString" IS NULL)

-- Oracle.11.Managed Oracle11

SELECT
	s."NullableString"
FROM
	"Src" s
ORDER BY
	s."Int"

-- Oracle.11.Managed Oracle11

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."NullableString" IS NULL

-- Oracle.11.Managed Oracle11

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."NullableString" IS NOT NULL

