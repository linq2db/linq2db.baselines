-- Informix.DB2 Informix
SELECT DISTINCT
	x.Amount::Int
FROM
	CategorySales x
WHERE
	x."Year" = 2010

-- Informix.DB2 Informix
SELECT FIRST 2 DISTINCT
	x.Amount::Int
FROM
	CategorySales x
WHERE
	x."Year" = 2010 AND x.Category = 'A'

-- Informix.DB2 Informix
DECLARE @castOfA Integer(4) -- Int32
SET     @castOfA = 20

SELECT
	x.Category
FROM
	CategorySales x
WHERE
	x."Year" = 2010 AND x.Amount::Int = @castOfA

-- Informix.DB2 Informix
DECLARE @castOfA Integer(4) -- Int32
SET     @castOfA = 20

SELECT
	r.Category
FROM
	CategorySales r
GROUP BY
	r.Category
HAVING
	SUM(CASE
		WHEN r."Year" = 2010 THEN r.Amount
		ELSE NULL
	END)::Int = @castOfA

-- Informix.DB2 Informix
SELECT DISTINCT
	SUM(CASE
		WHEN g_1."Year" = 2010 THEN g_1.Amount
		ELSE NULL
	END)::Int
FROM
	CategorySales g_1
GROUP BY
	g_1.Category

-- Informix.DB2 Informix
SELECT
	SUM(CASE
		WHEN r."Year" = 2000 THEN r.Amount
		ELSE NULL
	END),
	SUM(CASE
		WHEN r."Year" = 2010 THEN r.Amount
		ELSE NULL
	END)
FROM
	CategorySales r
GROUP BY
	r.Category

