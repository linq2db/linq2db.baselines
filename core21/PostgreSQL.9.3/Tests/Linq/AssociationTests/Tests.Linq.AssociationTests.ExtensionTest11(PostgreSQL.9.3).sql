BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	c_1."ParentID",
	c_1."ChildID"
FROM
	"Parent" cp
		INNER JOIN "Child" c_1 ON cp."ParentID" = c_1."ParentID"

