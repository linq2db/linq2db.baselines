BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	toSecond(addSeconds(t.DateTimeValue, 41))
FROM
	LinqDataTypes t

