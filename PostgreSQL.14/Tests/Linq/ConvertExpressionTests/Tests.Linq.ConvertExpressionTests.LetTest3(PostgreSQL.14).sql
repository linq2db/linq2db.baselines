-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

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

