BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	p.GuidValue
FROM
	LinqDataTypes p
WHERE
	p.GuidValue <> generateUUIDv4()

