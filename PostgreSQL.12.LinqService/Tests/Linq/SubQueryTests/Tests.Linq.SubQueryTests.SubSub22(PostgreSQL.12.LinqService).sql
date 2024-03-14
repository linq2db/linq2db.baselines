BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	(
		SELECT
			Count(*)
		FROM
			"Child" c_1
		WHERE
			p1."ParentID" = c_1."ParentID" AND c_1."ParentID" + 1 < p1."ParentID" + 2 AND
			c_1."ParentID" + 1 < p1."ParentID" + 2
	)
FROM
	"Parent" p1
WHERE
	p1."ParentID" + 1 > 0 AND p1."ParentID" + 2 > 0

