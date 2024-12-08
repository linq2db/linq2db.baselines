BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	trim(TRAILING '0.' FROM REPLACE(toString(p.MoneyValue), ',', '.'))
FROM
	LinqDataTypes p
WHERE
	CHAR_LENGTH(toString(p.MoneyValue)) > 0

