-- ClickHouse.Driver ClickHouse

SELECT
	p.GuidValue
FROM
	LinqDataTypes p
WHERE
	p.GuidValue IN (toUUID('d2f970c0-35ac-4987-9cd5-5badb1757436'))

