BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	toDate(addYears(t.DateTimeValue, toInt32(t.SmallIntValue)))
FROM
	LinqDataTypes t

