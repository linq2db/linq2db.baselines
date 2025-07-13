BeforeExecute
-- ClickHouse.Client ClickHouse

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
	pp.Value_1 <> toDecimal64('0', 4) AND pp.Value_1 <> toDecimal64('7', 4)

