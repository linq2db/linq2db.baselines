-- DB2 DB2.LUW DB2LUW
SELECT
	"r"."Category"
FROM
	"Sales" "r"
GROUP BY
	"r"."Category"
HAVING
	SUM(CASE
		WHEN "r"."Year" = 2010 THEN "r"."Amount"
		ELSE NULL
	END) > 16

-- DB2 DB2.LUW DB2LUW
SELECT
	"r"."Category"
FROM
	"Sales" "r"
GROUP BY
	"r"."Category"
HAVING
	SUM(CASE
		WHEN "r"."Year" = 2010 THEN "r"."Amount"
		ELSE NULL
	END) > 16

