BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t_1.c1
FROM
	(
		SELECT
			CASE
				WHEN t.MoneyValue >= toDecimal128('5.1', 10) THEN t.MoneyValue
				ELSE toDecimal64(toDecimal128('5.1', 10), toUInt8(4))
			END as c1
		FROM
			LinqDataTypes t
	) t_1
WHERE
	t_1.c1 <> toDecimal64('0', 4)

