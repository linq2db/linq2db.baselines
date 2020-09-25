BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	p."ParentID",
	EXISTS(
		SELECT
			*
		FROM
			"Child" c_1
		WHERE
			c_1."ParentID" = p."ParentID"
	)
FROM
	"Parent" p

