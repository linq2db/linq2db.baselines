BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	toString(toUInt8(p.ID))
FROM
	LinqDataTypes p
WHERE
	lengthUTF8(toString(toUInt8(p.ID))) > 0

