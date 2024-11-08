BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	toDate(addQuarters(t.DateTimeValue, toInt32(t.SmallIntValue)))
FROM
	LinqDataTypes t

