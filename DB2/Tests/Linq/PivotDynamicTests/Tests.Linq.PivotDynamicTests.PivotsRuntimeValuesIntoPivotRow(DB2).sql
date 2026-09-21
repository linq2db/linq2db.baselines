-- DB2 DB2.LUW DB2LUW
SELECT DISTINCT
	"x"."Year"
FROM
	"Sales" "x"

-- DB2 DB2.LUW DB2LUW
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
	"Sales" "g_1"
GROUP BY
	"g_1"."Category"

