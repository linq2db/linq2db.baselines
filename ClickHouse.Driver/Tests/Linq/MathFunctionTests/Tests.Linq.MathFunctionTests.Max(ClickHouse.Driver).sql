BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	t.c1
FROM
	(
		SELECT
			CASE
				WHEN p.MoneyValue >= toDecimal128('5.1', 10) THEN p.MoneyValue
				ELSE toDecimal64(toDecimal128('5.1', 10), 4)
			END as c1
		FROM
			LinqDataTypes p
	) t
WHERE
	t.c1 <> toDecimal64('0', 4)

