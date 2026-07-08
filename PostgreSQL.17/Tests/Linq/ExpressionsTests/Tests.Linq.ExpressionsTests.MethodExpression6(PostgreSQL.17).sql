-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"Child" c_1
		WHERE
			c_1."ParentID" = p."ParentID"
	)
FROM
	"Parent" p

