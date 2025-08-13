BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	p.GuidValue
FROM
	LinqDataTypes p
WHERE
	p.GuidValue <> generateUUIDv4()

