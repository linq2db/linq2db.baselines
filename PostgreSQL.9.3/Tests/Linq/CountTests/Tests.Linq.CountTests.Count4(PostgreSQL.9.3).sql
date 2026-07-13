-- PostgreSQL.9.3 PostgreSQL
SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"Child" t1
	)
FROM
	"Parent" p

