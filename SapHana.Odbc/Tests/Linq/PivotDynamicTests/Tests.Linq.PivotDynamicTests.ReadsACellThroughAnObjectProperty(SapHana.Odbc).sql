-- SapHana.Odbc SapHanaOdbc
SELECT
	"r"."Category",
	SUM(CASE
		WHEN "r"."Year" = 2010 THEN "r"."Amount"
		ELSE NULL
	END)
FROM
	"Sales" "r"
GROUP BY
	"r"."Category"

-- SapHana.Odbc SapHanaOdbc
SELECT
	"r"."Category",
	SUM(CASE
		WHEN "r"."Year" = 2010 THEN "r"."Amount"
		ELSE NULL
	END)
FROM
	"Sales" "r"
GROUP BY
	"r"."Category"

-- SapHana.Odbc SapHanaOdbc
SELECT
	"r"."Category",
	CAST(SUM(CASE
		WHEN "r"."Year" = 2010 THEN "r"."Amount"
		ELSE NULL
	END) AS Integer)
FROM
	"Sales" "r"
GROUP BY
	"r"."Category"

