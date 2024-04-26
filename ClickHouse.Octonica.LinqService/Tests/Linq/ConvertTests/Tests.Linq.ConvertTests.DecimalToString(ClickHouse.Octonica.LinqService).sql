BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	toString(p.MoneyValue)
FROM
	LinqDataTypes p
WHERE
	CHAR_LENGTH(toString(p.MoneyValue)) > 0

