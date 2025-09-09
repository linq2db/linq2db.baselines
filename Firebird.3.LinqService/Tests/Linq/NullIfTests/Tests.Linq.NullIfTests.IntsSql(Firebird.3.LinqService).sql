BeforeExecute
-- Firebird.3 Firebird3

SELECT
	NULLIF("s"."Int", 2)
FROM
	"Src" "s"
ORDER BY
	"s"."Int"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"Src" "x"
WHERE
	"x"."Int" = 2

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"Src" "x"
WHERE
	"x"."Int" <> 2

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	NULLIF("s"."Int", 4)
FROM
	"Src" "s"
ORDER BY
	"s"."Int"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"Src" "x"
WHERE
	"x"."Int" = 4

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"Src" "x"
WHERE
	"x"."Int" <> 4

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"s"."Int"
FROM
	"Src" "s"
ORDER BY
	"s"."Int"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"Src" "x"
WHERE
	1 = 0

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"Src" "x"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	NULLIF("s"."NullableInt", 2)
FROM
	"Src" "s"
ORDER BY
	"s"."Int"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"Src" "x"
WHERE
	"x"."NullableInt" = 2 OR "x"."NullableInt" IS NULL

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"Src" "x"
WHERE
	NOT ("x"."NullableInt" = 2 OR "x"."NullableInt" IS NULL)

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	NULLIF("s"."NullableInt", 4)
FROM
	"Src" "s"
ORDER BY
	"s"."Int"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"Src" "x"
WHERE
	"x"."NullableInt" = 4 OR "x"."NullableInt" IS NULL

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"Src" "x"
WHERE
	NOT ("x"."NullableInt" = 4 OR "x"."NullableInt" IS NULL)

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"s"."NullableInt"
FROM
	"Src" "s"
ORDER BY
	"s"."Int"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"Src" "x"
WHERE
	"x"."NullableInt" IS NULL

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"Src" "x"
WHERE
	"x"."NullableInt" IS NOT NULL

