BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	toDate32(addYears(t.DateTimeValue, toInt32(t.SmallIntValue)))
FROM
	LinqDataTypes t

