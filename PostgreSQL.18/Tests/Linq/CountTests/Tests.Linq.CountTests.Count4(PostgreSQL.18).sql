-- PostgreSQL.18 PostgreSQL13

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"Child" t1
	)
FROM
	"Parent" p

