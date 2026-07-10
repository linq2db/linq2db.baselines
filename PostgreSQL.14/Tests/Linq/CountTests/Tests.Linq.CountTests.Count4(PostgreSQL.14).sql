-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"Child" t1
	)
FROM
	"Parent" p

