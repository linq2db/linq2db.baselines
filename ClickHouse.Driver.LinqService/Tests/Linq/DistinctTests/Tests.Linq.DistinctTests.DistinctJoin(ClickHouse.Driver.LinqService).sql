BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	e.ID,
	p.SmallIntValue
FROM
	LinqDataTypes e
		LEFT JOIN LinqDataTypes p ON p.ID = e.ID

