-- DB2 DB2.LUW DB2LUW
SELECT DISTINCT
	CAST(Floor("x"."Amount") AS Int)
FROM
	"CategorySales" "x"
WHERE
	"x"."Year" = 2010 AND "x"."Category" = 'A'
FETCH NEXT 2 ROWS ONLY

-- DB2 DB2.LUW DB2LUW
DECLARE @castOfA Integer(4) -- Int32
SET     @castOfA = 20

SELECT
	"x"."Category"
FROM
	"CategorySales" "x"
WHERE
	"x"."Year" = 2010 AND CAST(Floor("x"."Amount") AS Int) = @castOfA

-- DB2 DB2.LUW DB2LUW
DECLARE @castOfA Integer(4) -- Int32
SET     @castOfA = 20

SELECT
	"u_1"."Key_1"
FROM
	(
		SELECT
			CAST(Floor(SUM(CASE
				WHEN "u"."Year" = 2010 THEN "u"."Amount"
				ELSE NULL
			END)) AS Int) as "Value_1",
			"u"."Category" as "Key_1"
		FROM
			"CategorySales" "u"
		GROUP BY
			"u"."Category"
		UNION ALL
		SELECT
			CAST(Floor(SUM(CASE
				WHEN "g_1"."Year" = 2020 THEN "g_1"."Amount"
				ELSE NULL
			END)) AS Int) as "Value_1",
			"g_1"."Category" as "Key_1"
		FROM
			"CategorySales" "g_1"
		GROUP BY
			"g_1"."Category"
	) "u_1"
WHERE
	"u_1"."Value_1" = @castOfA

-- DB2 DB2.LUW DB2LUW
SELECT
	"u_1"."Value_1"
FROM
	(
		SELECT
			VarChar('Y2010', 255) as "Name",
			"u"."Category" as "Key_1",
			CAST(Floor(SUM(CASE
				WHEN "u"."Year" = 2010 THEN "u"."Amount"
				ELSE NULL
			END)) AS Int) as "Value_1"
		FROM
			"CategorySales" "u"
		GROUP BY
			"u"."Category"
		UNION ALL
		SELECT
			VarChar('Y2020', 255) as "Name",
			"g_1"."Category" as "Key_1",
			CAST(Floor(SUM(CASE
				WHEN "g_1"."Year" = 2020 THEN "g_1"."Amount"
				ELSE NULL
			END)) AS Int) as "Value_1"
		FROM
			"CategorySales" "g_1"
		GROUP BY
			"g_1"."Category"
	) "u_1"
WHERE
	"u_1"."Name" = 'Y2010'
ORDER BY
	"u_1"."Key_1"

-- DB2 DB2.LUW DB2LUW
SELECT
	"u_1"."Value_1"
FROM
	(
		SELECT
			VarChar('Y2010', 255) as "Name",
			CAST(Floor(SUM(CASE
				WHEN "u"."Year" = 2010 THEN "u"."Amount"
				ELSE NULL
			END)) AS Int) as "Value_1"
		FROM
			"CategorySales" "u"
		GROUP BY
			"u"."Category"
		UNION ALL
		SELECT
			VarChar('Y2020', 255) as "Name",
			CAST(Floor(SUM(CASE
				WHEN "g_1"."Year" = 2020 THEN "g_1"."Amount"
				ELSE NULL
			END)) AS Int) as "Value_1"
		FROM
			"CategorySales" "g_1"
		GROUP BY
			"g_1"."Category"
	) "u_1"
WHERE
	"u_1"."Name" = 'Y2020'

