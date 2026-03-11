-- Firebird.3 Firebird3

SELECT
	NULLIF("s"."String", 'abc')
FROM
	"Src" "s"
ORDER BY
	"s"."Int"

-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	"s"."String" = 'abc' OR "s"."String" IS NULL

-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	NOT ("s"."String" = 'abc' OR "s"."String" IS NULL)

-- Firebird.3 Firebird3

SELECT
	NULLIF("s"."String", 'xyz')
FROM
	"Src" "s"
ORDER BY
	"s"."Int"

-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	"s"."String" = 'xyz' OR "s"."String" IS NULL

-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	NOT ("s"."String" = 'xyz' OR "s"."String" IS NULL)

-- Firebird.3 Firebird3

SELECT
	"s"."String"
FROM
	"Src" "s"
ORDER BY
	"s"."Int"

-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	"s"."String" IS NULL

-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	"s"."String" IS NOT NULL

-- Firebird.3 Firebird3

SELECT
	NULLIF("s"."NullableString", 'abc')
FROM
	"Src" "s"
ORDER BY
	"s"."Int"

-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	"s"."NullableString" = 'abc' OR "s"."NullableString" IS NULL

-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	NOT ("s"."NullableString" = 'abc' OR "s"."NullableString" IS NULL)

-- Firebird.3 Firebird3

SELECT
	NULLIF("s"."NullableString", 'xyz')
FROM
	"Src" "s"
ORDER BY
	"s"."Int"

-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	"s"."NullableString" = 'xyz' OR "s"."NullableString" IS NULL

-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	NOT ("s"."NullableString" = 'xyz' OR "s"."NullableString" IS NULL)

-- Firebird.3 Firebird3

SELECT
	"s"."NullableString"
FROM
	"Src" "s"
ORDER BY
	"s"."Int"

-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	"s"."NullableString" IS NULL

-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	"s"."NullableString" IS NOT NULL

