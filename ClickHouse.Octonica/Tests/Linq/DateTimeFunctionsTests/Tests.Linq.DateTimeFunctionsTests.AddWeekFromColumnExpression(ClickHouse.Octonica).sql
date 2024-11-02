BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	toDate(addWeeks(t.DateTimeValue, toInt32(t.SmallIntValue)))
FROM
	LinqDataTypes t

