BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT 
	c_1."ChildID", 
	c_1."ParentID"
FROM
	"Parent" cp
		INNER JOIN "Child" c_1 ON cp."ParentID" = c_1."ParentID"
WHERE
	cp."ParentID" = 1

