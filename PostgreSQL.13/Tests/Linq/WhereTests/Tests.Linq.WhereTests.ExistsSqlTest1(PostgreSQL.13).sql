-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"Parent" p
WHERE
	p."ParentID" + 100 IN (
		SELECT
			c_1."ParentID"
		FROM
			"Child" c_1
	)

