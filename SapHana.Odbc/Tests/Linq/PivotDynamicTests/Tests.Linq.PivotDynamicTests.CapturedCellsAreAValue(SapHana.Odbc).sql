-- SapHana.Odbc SapHanaOdbc
SELECT
	"g_1"."Category",
	SUM(CASE
		WHEN "g_1"."Year" = 2000 THEN "g_1"."Amount"
		ELSE NULL
	END),
	SUM(CASE
		WHEN "g_1"."Year" = 2010 THEN "g_1"."Amount"
		ELSE NULL
	END)
FROM
	"CategorySales" "g_1"
GROUP BY
	"g_1"."Category"

-- SapHana.Odbc SapHanaOdbc
DECLARE @p Decimal(12, 10)
SET     @p = 20.0000000000

SELECT
	"x"."Id"
FROM
	"CategorySales" "x"
WHERE
	"x"."Amount" = ?

-- SapHana.Odbc SapHanaOdbc
DECLARE @Cells Decimal(12, 10)
SET     @Cells = 20.0000000000

SELECT
	"x"."Id"
FROM
	"CategorySales" "x"
WHERE
	"x"."Amount" = ?

