-- PostgreSQL.19 PostgreSQL12
SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"Child" t1
	)
FROM
	"Parent" p

