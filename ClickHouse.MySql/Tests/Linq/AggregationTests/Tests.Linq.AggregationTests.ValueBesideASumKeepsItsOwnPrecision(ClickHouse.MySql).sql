-- ClickHouse.MySql ClickHouse
SELECT
	SUM(g_1.MoneyValue)
FROM
	LinqDataTypes g_1
GROUP BY
	g_1.ID

-- ClickHouse.MySql ClickHouse
SELECT
	SUM(s.MoneyValue) + toDecimal128('0.00005', 10)
FROM
	LinqDataTypes s
GROUP BY
	s.ID

