-- PostgreSQL.9.5 PostgreSQL
DECLARE @Date Timestamp -- DateTime2
SET     @Date = '2020-02-29'::date
DECLARE @dateTo Timestamp -- DateTime2
SET     @dateTo = '2020-03-10'::date

WITH RECURSIVE x
(
	"Counter",
	"Date_1",
	"Date_Year",
	"Date_Month"
)
AS
(
	SELECT
		1::Int,
		:Date::TimeStamp,
		Floor(Extract(year From :Date))::Int,
		Floor(Extract(month From :Date))::Int
	UNION ALL
	SELECT
		t1."Counter" + 1,
		t1."Date_1" + 1 * Interval '1 Day',
		Floor(Extract(year From (t1."Date_1" + 1 * Interval '1 Day')))::Int,
		Floor(Extract(month From (t1."Date_1" + 1 * Interval '1 Day')))::Int
	FROM
		x t1
	WHERE
		t1."Date_1" + 1 * Interval '1 Day' < :dateTo
)
SELECT
	r."Date_1",
	make_timestamp(r."Date_Year", r."Date_Month", r."Counter", 0, 0, 0)
FROM
	x r

