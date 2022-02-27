BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

SELECT
	Sum(c2."ChildID")
FROM
	"Child" c1_1
		INNER JOIN "Child" c2 ON c1_1."ChildID" = c2."ChildID" + 1
GROUP BY
	c1_1."ParentID"

