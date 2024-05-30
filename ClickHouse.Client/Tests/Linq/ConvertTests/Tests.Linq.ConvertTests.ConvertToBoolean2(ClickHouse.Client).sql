BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	p_1.c1
FROM
	(
		SELECT
			CASE
				WHEN p.MoneyValue <> toDecimal64('4.5', 10) THEN true
				ELSE false
			END as c1
		FROM
			LinqDataTypes p
	) p_1
WHERE
	p_1.c1 = false

