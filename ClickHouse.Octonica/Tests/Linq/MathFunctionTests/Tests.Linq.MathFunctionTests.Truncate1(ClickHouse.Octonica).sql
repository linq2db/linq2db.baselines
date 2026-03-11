-- ClickHouse.Octonica ClickHouse

SELECT
	t.Value_1
FROM
	(
		SELECT
			Truncate(p.MoneyValue) as Value_1
		FROM
			LinqDataTypes p
	) t
WHERE
	t.Value_1 <> toDecimal128('0.1', 10)

