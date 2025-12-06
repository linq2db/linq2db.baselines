-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	"s"."Enum" IN (NULL, NULL)

-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	"s"."Enum" NOT IN (NULL, NULL)

