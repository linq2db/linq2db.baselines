BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT DISTINCT
	r.F1,
	r.F2
FROM
	DistinctOrderByTable r
ORDER BY
	r.F1 DESC

