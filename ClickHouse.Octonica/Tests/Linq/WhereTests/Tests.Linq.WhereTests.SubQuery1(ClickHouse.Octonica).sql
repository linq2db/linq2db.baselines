-- ClickHouse.Octonica ClickHouse
SELECT
	pp.Value_1
FROM
	(
		SELECT
			roundBankers(p.MoneyValue, 2) as Value_1
		FROM
			LinqDataTypes p
	) pp
WHERE
	pp.Value_1 <> toDecimal128('0', 10) AND pp.Value_1 <> toDecimal128('7', 10)

