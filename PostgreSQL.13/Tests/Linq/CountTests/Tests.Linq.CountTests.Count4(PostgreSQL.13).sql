-- PostgreSQL.13 PostgreSQL

SELECT
	(
		SELECT
			COUNT(*) as "Count_1"
		FROM
			"Child" t1
	)
FROM
	"Parent" p

