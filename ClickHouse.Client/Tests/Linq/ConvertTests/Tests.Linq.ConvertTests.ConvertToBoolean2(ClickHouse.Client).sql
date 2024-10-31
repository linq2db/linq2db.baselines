BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	p.c1
FROM
	(
		SELECT
			CASE
				WHEN t.MoneyValue <> toDecimal64('4.5', 10) THEN true
				ELSE false
			END as c1
		FROM
			LinqDataTypes t
	) p
WHERE
	p.c1 = false

