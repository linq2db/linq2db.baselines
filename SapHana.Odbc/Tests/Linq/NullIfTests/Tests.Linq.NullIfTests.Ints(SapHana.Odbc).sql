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
	"Src" "x"
WHERE
	"x"."Int" = 2

-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"Src" "x"
WHERE
	"x"."Int" <> 2

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
	"Src" "x"
WHERE
	"x"."Int" = 4

-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"Src" "x"
WHERE
	"x"."Int" <> 4

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
	"Src" "x"
WHERE
	1 = 0

-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"Src" "x"

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
	"Src" "x"
WHERE
	"x"."NullableInt" = 2 OR "x"."NullableInt" IS NULL

-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"Src" "x"
WHERE
	NOT ("x"."NullableInt" = 2 OR "x"."NullableInt" IS NULL)

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
	"Src" "x"
WHERE
	"x"."NullableInt" = 4 OR "x"."NullableInt" IS NULL

-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"Src" "x"
WHERE
	NOT ("x"."NullableInt" = 4 OR "x"."NullableInt" IS NULL)

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
	"Src" "x"
WHERE
	"x"."NullableInt" IS NULL

-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"Src" "x"
WHERE
	"x"."NullableInt" IS NOT NULL

