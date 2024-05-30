BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	addYears(t.DateTimeValue, (toInt32(t.SmallIntValue) + toInt16(4)) - 4)
FROM
	LinqDataTypes t

