BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	trim(TRAILING '0.' FROM replaceAll(toString(p.MoneyValue), ',', '.'))
FROM
	LinqDataTypes p
WHERE
	CHAR_LENGTH(toString(p.MoneyValue)) > 0

