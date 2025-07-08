BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"Child" t1
	)
FROM
	"Parent" p

