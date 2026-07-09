-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"Child" t1
	)
FROM
	"Parent" p

