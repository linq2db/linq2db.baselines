BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	(
		SELECT
			t1."ParentID"
		FROM
			"Child" t1
		LIMIT 1
	)
FROM
	"Parent" p

