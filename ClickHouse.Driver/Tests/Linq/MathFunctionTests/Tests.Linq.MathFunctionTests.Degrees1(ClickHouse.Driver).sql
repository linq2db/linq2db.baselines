-- ClickHouse.Driver ClickHouse

SELECT
	t.Value_1
FROM
	(
		SELECT
			Floor(Degrees(p.MoneyValue)) as Value_1
		FROM
			LinqDataTypes p
	) t
WHERE
	t.Value_1 <> toDecimal128('0.1', 10)

