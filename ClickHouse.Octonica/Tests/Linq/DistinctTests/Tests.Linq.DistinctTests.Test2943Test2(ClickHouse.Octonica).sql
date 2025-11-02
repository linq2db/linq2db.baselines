-- ClickHouse.Octonica ClickHouse

SELECT DISTINCT
	r.F1,
	r.F2
FROM
	DistinctOrderByTable r
ORDER BY
	r.F1 DESC

