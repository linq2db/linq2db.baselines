BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

WITH RECURSIVE x AS
(
	SELECT
		toInt32(1) as Counter,
		toDateTime64(toDateTime64('2020-02-29 00:00:00.0000000', 7), 7) as Date_1
	UNION ALL
	SELECT
		t1.Counter + 1 as Counter,
		addDays(t1.Date_1, toFloat64(1)) as Date_1
	FROM
		x t1
	WHERE
		addDays(t1.Date_1, toFloat64(1)) < toDateTime64('2020-03-10 00:00:00.0000000', 7)
)
SELECT
	t2.Counter,
	t2.Date_1
FROM
	x t2

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

WITH RECURSIVE x AS
(
	SELECT
		toInt32(1) as Counter,
		toDateTime64(toDateTime64('2020-02-29 00:00:00.0000000', 7), 7) as Date_1
	UNION ALL
	SELECT
		t1.Counter + 1 as Counter,
		addDays(t1.Date_1, toFloat64(1)) as Date_1
	FROM
		x t1
	WHERE
		addDays(t1.Date_1, toFloat64(1)) < toDateTime64('2020-03-10 00:00:00.0000000', 7)
)
SELECT
	t2.Counter,
	t2.Date_1
FROM
	x t2

