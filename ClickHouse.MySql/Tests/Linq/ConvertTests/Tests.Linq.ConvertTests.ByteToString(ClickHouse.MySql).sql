BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p.ID
FROM
	LinqDataTypes p
WHERE
	CHAR_LENGTH(toString(toUInt8(p.ID))) > 0

