-- YDB Ydb

SELECT DISTINCT
	r.F1 as F1,
	r.F2 as F2
FROM
	DistinctOrderByTable r
ORDER BY
	F1 DESC,
	F2

