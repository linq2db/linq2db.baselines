-- ClickHouse.Octonica ClickHouse
WITH RECURSIVE x AS
(
	SELECT
		toInt32(1) as Counter,
		toDateTime64(toDateTime64('2020-02-29 00:00:00.0000000', 7), 7) as Date_1,
		toYear(toDateTime64('2020-02-29 00:00:00.0000000', 7)) as Date_Year,
		toMonth(toDateTime64('2020-02-29 00:00:00.0000000', 7)) as Date_Month
	UNION ALL
	SELECT
		t1.Counter + 1 as Counter,
		addDays(t1.Date_1, toFloat64(1)) as Date_1,
		toYear(addDays(t1.Date_1, toFloat64(1))) as Date_Year,
		toMonth(addDays(t1.Date_1, toFloat64(1))) as Date_Month
	FROM
		x t1
	WHERE
		addDays(t1.Date_1, toFloat64(1)) < toDateTime64('2020-03-10 00:00:00.0000000', 7)
)
SELECT
	r.Date_1,
	makeDateTime(r.Date_Year, r.Date_Month, r.Counter, 0, 0, 0)
FROM
	x r

