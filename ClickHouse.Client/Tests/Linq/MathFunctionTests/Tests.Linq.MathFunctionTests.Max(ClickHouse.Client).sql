BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t.c1
FROM
	(
		SELECT
			CASE
				WHEN p.MoneyValue > toDecimal64('5.1', 4)
					THEN p.MoneyValue
				ELSE toDecimal64('5.1', 4)
			END as c1
		FROM
			LinqDataTypes p
	) t
WHERE
	t.c1 <> toDecimal64('0', 4)

