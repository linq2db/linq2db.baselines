-- ClickHouse.MySql ClickHouse
SELECT
	g_1.Category,
	sumOrNull(CASE
		WHEN g_1.Year = 2000 THEN g_1.Amount
		ELSE NULL
	END),
	sumOrNull(CASE
		WHEN g_1.Year = 2010 THEN g_1.Amount
		ELSE NULL
	END)
FROM
	CategorySales g_1
GROUP BY
	g_1.Category

-- ClickHouse.MySql ClickHouse
SELECT
	x.Id
FROM
	CategorySales x
WHERE
	x.Amount = toDecimal128('20', 10)

-- ClickHouse.MySql ClickHouse
SELECT
	x.Id
FROM
	CategorySales x
WHERE
	x.Amount = toDecimal128('20', 10)

