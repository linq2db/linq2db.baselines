-- Firebird.3 Firebird3
SELECT DISTINCT
	CAST(Floor("x"."Amount") AS Int)
FROM
	"CategorySales" "x"
WHERE
	"x"."Year" = 2010

-- Firebird.3 Firebird3
SELECT DISTINCT
	CAST(Floor("x"."Amount") AS Int)
FROM
	"CategorySales" "x"
WHERE
	"x"."Year" = 2010 AND "x"."Category" = 'A'
FETCH NEXT 2 ROWS ONLY

-- Firebird.3 Firebird3
DECLARE @castOfA Integer -- Int32
SET     @castOfA = 20

SELECT
	"x"."Category"
FROM
	"CategorySales" "x"
WHERE
	"x"."Year" = 2010 AND CAST(Floor("x"."Amount") AS Int) = @castOfA

-- Firebird.3 Firebird3
DECLARE @castOfA Integer -- Int32
SET     @castOfA = 20

SELECT
	"r"."Category"
FROM
	"CategorySales" "r"
GROUP BY
	"r"."Category"
HAVING
	CAST(Floor(SUM(CASE
		WHEN "r"."Year" = 2010 THEN "r"."Amount"
		ELSE NULL
	END)) AS Int) = @castOfA

-- Firebird.3 Firebird3
SELECT DISTINCT
	CAST(Floor(SUM(CASE
		WHEN "g_1"."Year" = 2010 THEN "g_1"."Amount"
		ELSE NULL
	END)) AS Int)
FROM
	"CategorySales" "g_1"
GROUP BY
	"g_1"."Category"

-- Firebird.3 Firebird3
SELECT
	SUM(CASE
		WHEN "r"."Year" = 2000 THEN "r"."Amount"
		ELSE NULL
	END),
	SUM(CASE
		WHEN "r"."Year" = 2010 THEN "r"."Amount"
		ELSE NULL
	END)
FROM
	"CategorySales" "r"
GROUP BY
	"r"."Category"

