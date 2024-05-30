BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	pp_1.Value_1
FROM
	(
		SELECT
			roundBankers(pp.MoneyValue, 2) as Value_1
		FROM
			LinqDataTypes pp
	) pp_1
WHERE
	pp_1.Value_1 <> toDecimal128('0', 10) AND pp_1.Value_1 <> toDecimal128('7', 10)

