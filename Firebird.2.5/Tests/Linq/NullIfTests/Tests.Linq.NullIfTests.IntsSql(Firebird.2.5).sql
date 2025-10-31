-- Firebird.2.5 Firebird

SELECT
	NULLIF("s"."Int", 2)
FROM
	"Src" "s"
ORDER BY
	"s"."Int"

-- Firebird.2.5 Firebird

SELECT
	COUNT(*)
FROM
	"Src" "x"
WHERE
	"x"."Int" = 2

-- Firebird.2.5 Firebird

SELECT
	COUNT(*)
FROM
	"Src" "x"
WHERE
	"x"."Int" <> 2

-- Firebird.2.5 Firebird

SELECT
	NULLIF("s"."Int", 4)
FROM
	"Src" "s"
ORDER BY
	"s"."Int"

-- Firebird.2.5 Firebird

SELECT
	COUNT(*)
FROM
	"Src" "x"
WHERE
	"x"."Int" = 4

-- Firebird.2.5 Firebird

SELECT
	COUNT(*)
FROM
	"Src" "x"
WHERE
	"x"."Int" <> 4

-- Firebird.2.5 Firebird

SELECT
	"s"."Int"
FROM
	"Src" "s"
ORDER BY
	"s"."Int"

-- Firebird.2.5 Firebird

SELECT
	COUNT(*)
FROM
	"Src" "x"
WHERE
	1 = 0

-- Firebird.2.5 Firebird

SELECT
	COUNT(*)
FROM
	"Src" "x"

-- Firebird.2.5 Firebird

SELECT
	NULLIF("s"."NullableInt", 2)
FROM
	"Src" "s"
ORDER BY
	"s"."Int"

-- Firebird.2.5 Firebird

SELECT
	COUNT(*)
FROM
	"Src" "x"
WHERE
	"x"."NullableInt" = 2 OR "x"."NullableInt" IS NULL

-- Firebird.2.5 Firebird

SELECT
	COUNT(*)
FROM
	"Src" "x"
WHERE
	NOT ("x"."NullableInt" = 2 OR "x"."NullableInt" IS NULL)

-- Firebird.2.5 Firebird

SELECT
	NULLIF("s"."NullableInt", 4)
FROM
	"Src" "s"
ORDER BY
	"s"."Int"

-- Firebird.2.5 Firebird

SELECT
	COUNT(*)
FROM
	"Src" "x"
WHERE
	"x"."NullableInt" = 4 OR "x"."NullableInt" IS NULL

-- Firebird.2.5 Firebird

SELECT
	COUNT(*)
FROM
	"Src" "x"
WHERE
	NOT ("x"."NullableInt" = 4 OR "x"."NullableInt" IS NULL)

-- Firebird.2.5 Firebird

SELECT
	"s"."NullableInt"
FROM
	"Src" "s"
ORDER BY
	"s"."Int"

-- Firebird.2.5 Firebird

SELECT
	COUNT(*)
FROM
	"Src" "x"
WHERE
	"x"."NullableInt" IS NULL

-- Firebird.2.5 Firebird

SELECT
	COUNT(*)
FROM
	"Src" "x"
WHERE
	"x"."NullableInt" IS NOT NULL

