-- Firebird.4 Firebird4

SELECT
	NULLIF("s"."Int", 2)
FROM
	"Src" "s"
ORDER BY
	"s"."Int"

-- Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"Src" "x"
WHERE
	"x"."Int" = 2

-- Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"Src" "x"
WHERE
	"x"."Int" <> 2

-- Firebird.4 Firebird4

SELECT
	NULLIF("s"."Int", 4)
FROM
	"Src" "s"
ORDER BY
	"s"."Int"

-- Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"Src" "x"
WHERE
	"x"."Int" = 4

-- Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"Src" "x"
WHERE
	"x"."Int" <> 4

-- Firebird.4 Firebird4

SELECT
	"s"."Int"
FROM
	"Src" "s"
ORDER BY
	"s"."Int"

-- Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"Src" "x"
WHERE
	1 = 0

-- Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"Src" "x"

-- Firebird.4 Firebird4

SELECT
	NULLIF("s"."NullableInt", 2)
FROM
	"Src" "s"
ORDER BY
	"s"."Int"

-- Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"Src" "x"
WHERE
	"x"."NullableInt" = 2 OR "x"."NullableInt" IS NULL

-- Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"Src" "x"
WHERE
	NOT ("x"."NullableInt" = 2 OR "x"."NullableInt" IS NULL)

-- Firebird.4 Firebird4

SELECT
	NULLIF("s"."NullableInt", 4)
FROM
	"Src" "s"
ORDER BY
	"s"."Int"

-- Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"Src" "x"
WHERE
	"x"."NullableInt" = 4 OR "x"."NullableInt" IS NULL

-- Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"Src" "x"
WHERE
	NOT ("x"."NullableInt" = 4 OR "x"."NullableInt" IS NULL)

-- Firebird.4 Firebird4

SELECT
	"s"."NullableInt"
FROM
	"Src" "s"
ORDER BY
	"s"."Int"

-- Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"Src" "x"
WHERE
	"x"."NullableInt" IS NULL

-- Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"Src" "x"
WHERE
	"x"."NullableInt" IS NOT NULL

