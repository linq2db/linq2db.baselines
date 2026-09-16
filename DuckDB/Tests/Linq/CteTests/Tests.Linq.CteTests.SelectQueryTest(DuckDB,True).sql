-- DuckDB
WITH RECURSIVE x (Counter, Date_1)
AS
(
	SELECT
		CAST(1 AS INTEGER),
		CAST('2020-02-29 00:00:00.000000'::TIMESTAMP AS TIMESTAMP)
	UNION ALL
	SELECT
		t1.Counter + 1,
		t1.Date_1 + 1 * Interval '1 Day'
	FROM
		x t1
	WHERE
		t1.Date_1 + 1 * Interval '1 Day' < '2020-03-10 00:00:00.000000'::TIMESTAMP
)
SELECT
	t2.Counter,
	t2.Date_1
FROM
	x t2

