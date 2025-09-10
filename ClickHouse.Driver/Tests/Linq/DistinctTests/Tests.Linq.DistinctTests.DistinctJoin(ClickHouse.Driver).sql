BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	e.ID,
	p.SmallIntValue
FROM
	LinqDataTypes e
		LEFT JOIN LinqDataTypes p ON p.ID = e.ID

