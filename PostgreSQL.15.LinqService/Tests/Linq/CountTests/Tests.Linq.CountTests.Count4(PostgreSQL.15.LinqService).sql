BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	(
		SELECT
			Count(*)
		FROM
			"Child" t1
	)
FROM
	"Parent" p

