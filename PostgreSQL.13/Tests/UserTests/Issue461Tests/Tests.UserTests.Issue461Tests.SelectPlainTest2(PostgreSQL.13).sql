-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	p."ParentID",
	(
		SELECT
			c_1."ParentID" + 1
		FROM
			"Child" c_1
		LIMIT 1
	)
FROM
	"Parent" p

