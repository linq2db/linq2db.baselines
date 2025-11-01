-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"Child" t1
	)
FROM
	"Parent" p

