-- SapHana.Native SapHana
SELECT DISTINCT
	CAST("x"."Amount" AS Integer)
FROM
	"CategorySales" "x"
WHERE
	"x"."Year" = 2010

-- SapHana.Native SapHana
SELECT DISTINCT
	CAST("x"."Amount" AS Integer)
FROM
	"CategorySales" "x"
WHERE
	"x"."Year" = 2010 AND "x"."Category" = 'A'
LIMIT 2

-- SapHana.Native SapHana
DECLARE @castOfA Integer -- Int32
SET     @castOfA = 20

SELECT
	"x"."Category"
FROM
	"CategorySales" "x"
WHERE
	"x"."Year" = 2010 AND CAST("x"."Amount" AS Integer) = :"castOfA"

-- SapHana.Native SapHana
DECLARE @castOfA Integer -- Int32
SET     @castOfA = 20

SELECT
	"r"."Category"
FROM
	"CategorySales" "r"
GROUP BY
	"r"."Category"
HAVING
	CAST(SUM(CASE
		WHEN "r"."Year" = 2010 THEN "r"."Amount"
		ELSE NULL
	END) AS Integer) = :"castOfA"

-- SapHana.Native SapHana
SELECT DISTINCT
	CAST(SUM(CASE
		WHEN "g_1"."Year" = 2010 THEN "g_1"."Amount"
		ELSE NULL
	END) AS Integer)
FROM
	"CategorySales" "g_1"
GROUP BY
	"g_1"."Category"

-- SapHana.Native SapHana
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

