BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"Child" t1
	)
FROM
	"Parent" p

