BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	CASE
		WHEN t2.SUM_1 < toDecimal128('0', 10) AND t2.SUM_1 IS NOT NULL
			THEN toDecimal128('9', 10)
		ELSE t2.SUM_1 + toDecimal128('8', 10)
	END,
	t2.SUM_1 + t2.SUM_1
FROM
	(
		SELECT
			(
				SELECT
					sumOrNull(t1.MoneyValue)
				FROM
					LinqDataTypes t1
			) as SUM_1
		FROM
			LinqDataTypes q
	) t2

