-- DB2 DB2.LUW DB2LUW
SELECT
	"r"."Category",
	SUM(CASE
		WHEN "r"."Year" = 2010 THEN "r"."Amount"
		ELSE NULL
	END)
FROM
	"CategorySales" "r"
GROUP BY
	"r"."Category"
HAVING
	SUM(CASE
		WHEN "r"."Year" = 2010 THEN "r"."Amount"
		ELSE NULL
	END) >= 15

