BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	(
		SELECT
			Count(*)
		FROM
			"Child" t1
	)
FROM
	"Parent" p

