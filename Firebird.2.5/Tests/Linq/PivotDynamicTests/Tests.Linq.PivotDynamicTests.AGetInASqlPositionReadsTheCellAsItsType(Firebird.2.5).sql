-- Firebird.2.5 Firebird
SELECT DISTINCT
	CAST(Floor("x"."Amount") AS Int)
FROM
	"CategorySales" "x"
WHERE
	"x"."Year" = 2010

-- Firebird.2.5 Firebird
SELECT FIRST 2 DISTINCT
	CAST(Floor("x"."Amount") AS Int)
FROM
	"CategorySales" "x"
WHERE
	"x"."Year" = 2010 AND "x"."Category" = 'A'

-- Firebird.2.5 Firebird
DECLARE @castOfA Integer -- Int32
SET     @castOfA = 20

SELECT
	"x"."Category"
FROM
	"CategorySales" "x"
WHERE
	"x"."Year" = 2010 AND CAST(Floor("x"."Amount") AS Int) = @castOfA

-- Firebird.2.5 Firebird
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

-- Firebird.2.5 Firebird
SELECT DISTINCT
	CAST(Floor(SUM(CASE
		WHEN "g_1"."Year" = 2010 THEN "g_1"."Amount"
		ELSE NULL
	END)) AS Int)
FROM
	"CategorySales" "g_1"
GROUP BY
	"g_1"."Category"

-- Firebird.2.5 Firebird
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

