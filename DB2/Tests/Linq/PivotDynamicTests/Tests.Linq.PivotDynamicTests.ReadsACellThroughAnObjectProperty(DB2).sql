-- DB2 DB2.LUW DB2LUW
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

-- DB2 DB2.LUW DB2LUW
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

-- DB2 DB2.LUW DB2LUW
SELECT
	"r"."Category",
	CAST(Floor(SUM(CASE
		WHEN "r"."Year" = 2010 THEN "r"."Amount"
		ELSE NULL
	END)) AS Int)
FROM
	"Sales" "r"
GROUP BY
	"r"."Category"

