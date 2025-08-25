BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	p.ID
FROM
	LinqDataTypes p
WHERE
	lengthUTF8(toString(toUInt8(p.ID))) > 0

