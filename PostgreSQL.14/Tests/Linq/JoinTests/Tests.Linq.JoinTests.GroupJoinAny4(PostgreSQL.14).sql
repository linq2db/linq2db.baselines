-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12

SELECT
	p."ParentID",
	EXISTS(
		SELECT
			*
		FROM
			"Child" c_1
		WHERE
			p."ParentID" = c_1."ParentID"
	)
FROM
	"Parent" p

