BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	Count(*)
FROM
	LinqDataTypes p
WHERE
	p.ID = toInt32(1)

