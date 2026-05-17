-- Firebird.3 Firebird3

SELECT
	NULLIF("s"."Int", 2)
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
	"s"."Int" = 2

-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	"s"."Int" <> 2

-- Firebird.3 Firebird3

SELECT
	NULLIF("s"."Int", 4)
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
	"s"."Int" = 4

-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	"s"."Int" <> 4

-- Firebird.3 Firebird3

SELECT
	"s"."Int"
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
	1 = 0

-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"Src" "s"

-- Firebird.3 Firebird3

SELECT
	NULLIF("s"."NullableInt", 2)
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
	"s"."NullableInt" = 2 OR "s"."NullableInt" IS NULL

-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	NOT ("s"."NullableInt" = 2 OR "s"."NullableInt" IS NULL)

-- Firebird.3 Firebird3

SELECT
	NULLIF("s"."NullableInt", 4)
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
	"s"."NullableInt" = 4 OR "s"."NullableInt" IS NULL

-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	NOT ("s"."NullableInt" = 4 OR "s"."NullableInt" IS NULL)

-- Firebird.3 Firebird3

SELECT
	"s"."NullableInt"
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
	"s"."NullableInt" IS NULL

-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	"s"."NullableInt" IS NOT NULL

