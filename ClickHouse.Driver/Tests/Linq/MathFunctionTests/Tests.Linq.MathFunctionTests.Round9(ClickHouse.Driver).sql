BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	t.c1
FROM
	(
		SELECT
			ROUND(p.MoneyValue, 1) as c1
		FROM
			LinqDataTypes p
	) t
WHERE
	t.c1 <> toDecimal64('0', 4)

