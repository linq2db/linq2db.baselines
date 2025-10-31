-- ClickHouse.Octonica ClickHouse

SELECT
	CASE
		WHEN t2.x < toDecimal128('0', 10) THEN toDecimal128('9', 10)
		ELSE t2.x + toDecimal128('8', 10)
	END,
	t2.x + t2.x
FROM
	(
		SELECT
			(
				SELECT
					sumOrNull(t1.MoneyValue)
				FROM
					LinqDataTypes t1
			) as x
		FROM
			LinqDataTypes q
	) t2

