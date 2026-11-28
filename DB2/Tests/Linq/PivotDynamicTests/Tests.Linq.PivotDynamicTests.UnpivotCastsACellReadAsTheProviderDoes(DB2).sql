-- DB2 DB2.LUW DB2LUW
SELECT DISTINCT
	CAST(Floor("x"."Amount") AS Int)
FROM
	"CategorySales" "x"
WHERE
	"x"."Year" = 2010 AND "x"."Category" = 'A'
FETCH NEXT 2 ROWS ONLY

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Key_1",
	VarChar('Y2000', 255),
	CAST(Floor("t1".Y2000) AS Int)
FROM
	(
		SELECT
			SUM(CASE
				WHEN "g_1"."Year" = 2000 THEN "g_1"."Amount"
				ELSE NULL
			END) as Y2000,
			"g_1"."Category" as "Key_1"
		FROM
			"CategorySales" "g_1"
		GROUP BY
			"g_1"."Category"
	) "t1"
WHERE
	"t1".Y2000 IS NOT NULL
UNION ALL
SELECT
	"t2"."Key_1",
	VarChar('Y2010', 255),
	CAST(Floor("t2".Y2010) AS Int)
FROM
	(
		SELECT
			SUM(CASE
				WHEN "g_2"."Year" = 2010 THEN "g_2"."Amount"
				ELSE NULL
			END) as Y2010,
			"g_2"."Category" as "Key_1"
		FROM
			"CategorySales" "g_2"
		GROUP BY
			"g_2"."Category"
	) "t2"
WHERE
	"t2".Y2010 IS NOT NULL

-- DB2 DB2.LUW DB2LUW
SELECT
	"row_1"."Category",
	CAST(Floor(SUM(CASE
		WHEN "row_1"."Year" = 2020 THEN "row_1"."Amount"
		ELSE NULL
	END)) AS Int)
FROM
	"CategorySales" "row_1"
GROUP BY
	"row_1"."Category"

-- DB2 DB2.LUW DB2LUW
SELECT
	"row_1"."Category",
	CAST(Floor(SUM(CASE
		WHEN "row_1"."Year" = 2020 THEN "row_1"."Amount"
		ELSE NULL
	END)) AS Int)
FROM
	"CategorySales" "row_1"
GROUP BY
	"row_1"."Category"

