BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL (asynchronously)
DECLARE @Date Timestamp -- DateTime2
SET     @Date = '2020-02-29'::date
DECLARE @dateTo Timestamp -- DateTime2
SET     @dateTo = '2020-03-10'::date

WITH RECURSIVE x ("Counter", "Date_1")
AS
(
	SELECT
		1::Int,
		:Date::TimeStamp
	UNION ALL
	SELECT
		t1."Counter" + 1,
		t1."Date_1" + 1 * Interval '1 Day'
	FROM
		x t1
	WHERE
		t1."Date_1" + 1 * Interval '1 Day' < :dateTo
)
SELECT
	t2."Counter",
	t2."Date_1"
FROM
	x t2

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL (asynchronously)
DECLARE @Date Timestamp -- DateTime2
SET     @Date = '2020-02-29'::date
DECLARE @dateTo Timestamp -- DateTime2
SET     @dateTo = '2020-03-10'::date

WITH RECURSIVE x ("Counter", "Date_1")
AS
(
	SELECT
		1::Int,
		:Date::TimeStamp
	UNION ALL
	SELECT
		t1."Counter" + 1,
		t1."Date_1" + 1 * Interval '1 Day'
	FROM
		x t1
	WHERE
		t1."Date_1" + 1 * Interval '1 Day' < :dateTo
)
SELECT
	t2."Counter",
	t2."Date_1"
FROM
	x t2

