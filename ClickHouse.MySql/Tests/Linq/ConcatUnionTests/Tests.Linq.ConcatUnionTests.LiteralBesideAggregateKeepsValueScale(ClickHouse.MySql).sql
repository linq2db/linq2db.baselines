-- ClickHouse.MySql ClickHouse
SELECT
	MAX(g_1.Value) as Max_1
FROM
	ScaledDecimalRow g_1
GROUP BY
	g_1.Id
UNION ALL
SELECT
	toDecimal128(toDecimal128('1.004', 3), 3) as Max_1
FROM
	ScaledDecimalRow r

-- ClickHouse.MySql ClickHouse
SELECT
	CASE
		WHEN r.Id > 0 THEN r.Value
		ELSE r.Value + toDecimal64('1', 2)
	END as c1
FROM
	ScaledDecimalRow r
UNION ALL
SELECT
	toDecimal128(toDecimal128('1.004', 3), 3) as c1
FROM
	ScaledDecimalRow r_1

