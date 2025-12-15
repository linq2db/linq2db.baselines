-- SapHana.Odbc SapHanaOdbc

SELECT
	NULLIF("s"."Int", 2)
FROM
	"Src" "s"
ORDER BY
	"s"."Int"

-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	"s"."Int" = 2

-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	"s"."Int" <> 2

-- SapHana.Odbc SapHanaOdbc

SELECT
	NULLIF("s"."Int", 4)
FROM
	"Src" "s"
ORDER BY
	"s"."Int"

-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	"s"."Int" = 4

-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	"s"."Int" <> 4

-- SapHana.Odbc SapHanaOdbc

SELECT
	"s"."Int"
FROM
	"Src" "s"
ORDER BY
	"s"."Int"

-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	1 = 0

-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"Src" "s"

-- SapHana.Odbc SapHanaOdbc

SELECT
	NULLIF("s"."NullableInt", 2)
FROM
	"Src" "s"
ORDER BY
	"s"."Int"

-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	"s"."NullableInt" = 2 OR "s"."NullableInt" IS NULL

-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	NOT ("s"."NullableInt" = 2 OR "s"."NullableInt" IS NULL)

-- SapHana.Odbc SapHanaOdbc

SELECT
	NULLIF("s"."NullableInt", 4)
FROM
	"Src" "s"
ORDER BY
	"s"."Int"

-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	"s"."NullableInt" = 4 OR "s"."NullableInt" IS NULL

-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	NOT ("s"."NullableInt" = 4 OR "s"."NullableInt" IS NULL)

-- SapHana.Odbc SapHanaOdbc

SELECT
	"s"."NullableInt"
FROM
	"Src" "s"
ORDER BY
	"s"."Int"

-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	"s"."NullableInt" IS NULL

-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	"s"."NullableInt" IS NOT NULL

