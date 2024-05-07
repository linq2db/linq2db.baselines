﻿BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t2.month_1,
	t2.month_1 as year_1,
	t2.int_1
FROM
	(
		SELECT
			toInt32(t1.SmallIntValue) as month_1,
			3 as int_1
		FROM
			LinqDataTypes t1
	) t2
UNION DISTINCT
SELECT
	t4.month_1 as month_1,
	t4.year_1 as year_1,
	1 as int_1
FROM
	(
		SELECT
			toMonth(t3.DateTimeValue) as month_1,
			toYear(t3.DateTimeValue) as year_1
		FROM
			LinqDataTypes t3
	) t4
GROUP BY
	t4.month_1,
	t4.year_1
UNION DISTINCT
SELECT
	toYear(t5.DateTimeValue) as month_1,
	toYear(t5.DateTimeValue) as year_1,
	2 as int_1
FROM
	LinqDataTypes t5

