-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"Child" c_1
		WHERE
			p1."ParentID" = c_1."ParentID" AND c_1."ParentID" + 1 < p1."ParentID" + 2
	)
FROM
	"Parent" p1
WHERE
	p1."ParentID" > -1 AND p1."ParentID" > -2

