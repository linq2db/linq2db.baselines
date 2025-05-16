BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	p.ID
FROM
	LinqDataTypes p
WHERE
	lengthUTF8(toString(toUInt8(p.ID))) > 0

