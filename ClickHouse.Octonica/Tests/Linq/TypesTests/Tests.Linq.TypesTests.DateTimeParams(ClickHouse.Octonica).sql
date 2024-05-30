BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.DateTimeValue
FROM
	LinqDataTypes t
WHERE
	t.DateTimeValue > toDateTime64('1992-01-11 01:11:21.100', 3)
LIMIT 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.DateTimeValue
FROM
	LinqDataTypes t
WHERE
	t.DateTimeValue > toDateTime64('1993-01-11 01:11:21.100', 3)
LIMIT 1

