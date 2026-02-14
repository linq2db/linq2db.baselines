-- PostgreSQL.13 PostgreSQL

SELECT
	(
		SELECT
			COUNT(*) as "Count6"
		FROM
			"Child" c_1
		WHERE
			c_1."ParentID" = p."ParentID"
	)
FROM
	"Parent" p

