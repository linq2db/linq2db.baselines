-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT DISTINCT
	r."F1",
	r."F2"
FROM
	"DistinctOrderByTable" r
ORDER BY
	r."F1" DESC

