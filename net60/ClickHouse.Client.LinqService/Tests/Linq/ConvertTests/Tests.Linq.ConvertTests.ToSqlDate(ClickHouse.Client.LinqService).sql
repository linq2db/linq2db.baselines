BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	toDateTime64(concat(toString(YEAR(t.DateTimeValue)), '-01-01'), toUInt8(7))
FROM
	LinqDataTypes t

