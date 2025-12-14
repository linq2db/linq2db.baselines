-- ClickHouse.MySql ClickHouse

SELECT
	p.GuidValue
FROM
	LinqDataTypes p
WHERE
	p.GuidValue <> generateUUIDv4()

