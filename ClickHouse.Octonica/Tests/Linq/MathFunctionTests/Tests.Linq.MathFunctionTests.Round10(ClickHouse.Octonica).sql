-- ClickHouse.Octonica ClickHouse
SELECT
	t.c1
FROM
	(
		SELECT
			roundBankers(p.MoneyValue, 1) as c1
		FROM
			LinqDataTypes p
	) t
WHERE
	t.c1 <> toDecimal128('0', 10) AND t.c1 <> toDecimal128('7', 10)

