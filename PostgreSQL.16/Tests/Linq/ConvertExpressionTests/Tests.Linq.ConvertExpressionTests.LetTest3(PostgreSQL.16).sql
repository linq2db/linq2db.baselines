-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

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

