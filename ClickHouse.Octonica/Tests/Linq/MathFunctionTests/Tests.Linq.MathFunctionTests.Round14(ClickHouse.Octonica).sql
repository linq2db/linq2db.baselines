-- ClickHouse.Octonica ClickHouse
SELECT
	roundBankers(p.MoneyValue, 5) + p.MoneyValue
FROM
	LinqDataTypes p
WHERE
	p.MoneyValue <> toDecimal64('0', 4)

-- ClickHouse.Octonica ClickHouse
SELECT
	CASE
		WHEN p.ID > 2 THEN roundBankers(p.MoneyValue, 5)
		ELSE p.MoneyValue
	END
FROM
	LinqDataTypes p
WHERE
	p.MoneyValue <> toDecimal64('0', 4)

