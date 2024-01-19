BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	addSeconds(t.DateTimeValue, t.SmallIntValue)
FROM
	LinqDataTypes t

