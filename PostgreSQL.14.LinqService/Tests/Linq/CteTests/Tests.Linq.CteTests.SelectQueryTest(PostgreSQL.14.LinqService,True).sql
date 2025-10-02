BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)

WITH RECURSIVE x ("Counter", "Date_1")
AS
(
	SELECT
		1::Int,
		'2020-02-29'::date::TimeStamp
	UNION ALL
	SELECT
		t1."Counter" + 1,
		t1."Date_1" + 1 * Interval '1 Day'
	FROM
		x t1
	WHERE
		t1."Date_1" + 1 * Interval '1 Day' < '2020-03-10'::date
)
SELECT
	t2."Counter",
	t2."Date_1"
FROM
	x t2

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)

WITH RECURSIVE x ("Counter", "Date_1")
AS
(
	SELECT
		1::Int,
		'2020-02-29'::date::TimeStamp
	UNION ALL
	SELECT
		t1."Counter" + 1,
		t1."Date_1" + 1 * Interval '1 Day'
	FROM
		x t1
	WHERE
		t1."Date_1" + 1 * Interval '1 Day' < '2020-03-10'::date
)
SELECT
	t2."Counter",
	t2."Date_1"
FROM
	x t2

