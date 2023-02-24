BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	toString(t.MoneyValue)
FROM
	LinqDataTypes t
WHERE
	CHAR_LENGTH(toString(t.MoneyValue)) > toInt32(0)

