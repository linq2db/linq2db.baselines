BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.DateTimeNullable
FROM
	ValueConversion t
WHERE
	toDateTime64('2020-02-29 00:00:00.0000000', 7) = t.DateTimeNullable

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.DateTimeNullable
FROM
	ValueConversion t
WHERE
	t.DateTimeNullable = toDateTime64('2020-02-29 00:00:00.0000000', 7)

