BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	CASE
		WHEN t2.SUM_1 < toDecimal128('0', 10) THEN toDecimal64('9', 10)
		ELSE t2.SUM_1 + toDecimal64('8', 10)
	END,
	t2.SUM_1 + t2.SUM_1
FROM
	LinqDataTypes q
		LEFT JOIN (
			SELECT
				sumOrNull(t1.MoneyValue) as SUM_1
			FROM
				LinqDataTypes t1
		) t2 ON 1=1

