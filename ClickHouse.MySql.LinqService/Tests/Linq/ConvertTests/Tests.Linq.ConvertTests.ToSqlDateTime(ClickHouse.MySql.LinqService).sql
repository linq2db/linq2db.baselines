BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	toDateTime64(concat(toString(YEAR(t.DateTimeValue)), '-01-01 00:20:00'), toUInt8(7))
FROM
	LinqDataTypes t

