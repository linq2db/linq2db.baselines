-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	(
		SELECT
			t1."ChildID"
		FROM
			"Child" t1
		LIMIT 1
	)
FROM
	"Parent" p

