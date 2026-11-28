-- ClickHouse.Driver ClickHouse
SELECT DISTINCT
	toInt32(x.Amount)
FROM
	CategorySales x
WHERE
	x.Year = 2010

-- ClickHouse.Driver ClickHouse
SELECT DISTINCT
	toInt32(x.Amount)
FROM
	CategorySales x
WHERE
	x.Year = 2010 AND x.Category = 'A'
LIMIT 2

-- ClickHouse.Driver ClickHouse
SELECT
	x.Category
FROM
	CategorySales x
WHERE
	x.Year = 2010 AND toInt32(x.Amount) = 20

-- ClickHouse.Driver ClickHouse
SELECT
	r.Category
FROM
	CategorySales r
GROUP BY
	r.Category
HAVING
	toInt32(sumOrNull(CASE
		WHEN r.Year = 2010 THEN r.Amount
		ELSE NULL
	END)) = 20

-- ClickHouse.Driver ClickHouse
SELECT DISTINCT
	toInt32(sumOrNull(CASE
		WHEN g_1.Year = 2010 THEN g_1.Amount
		ELSE NULL
	END))
FROM
	CategorySales g_1
GROUP BY
	g_1.Category

-- ClickHouse.Driver ClickHouse
SELECT
	sumOrNull(CASE
		WHEN r.Year = 2000 THEN r.Amount
		ELSE NULL
	END),
	sumOrNull(CASE
		WHEN r.Year = 2010 THEN r.Amount
		ELSE NULL
	END)
FROM
	CategorySales r
GROUP BY
	r.Category

