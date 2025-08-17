BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	t.Value_1
FROM
	(
		SELECT
			Ceiling(p.MoneyValue) as Value_1
		FROM
			LinqDataTypes p
	) t
WHERE
	t.Value_1 <> toDecimal128('0', 10)

