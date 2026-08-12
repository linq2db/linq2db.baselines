-- ClickHouse.MySql ClickHouse
WITH RECURSIVE x AS
(
	SELECT
		toDateTime64(toDateTime64('2020-02-29 00:00:00.0000000', 7), 7) as Date_1,
		toYear(toDateTime64('2020-02-29 00:00:00.0000000', 7)) as Date_Year,
		toMonth(toDateTime64('2020-02-29 00:00:00.0000000', 7)) as Date_Month
	UNION ALL
	SELECT
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
	makeDateTime(r.Date_Year, 1, 1, 0, 0, 0),
	makeDateTime(r.Date_Year, r.Date_Month, 1, 0, 0, 0)
FROM
	x r

