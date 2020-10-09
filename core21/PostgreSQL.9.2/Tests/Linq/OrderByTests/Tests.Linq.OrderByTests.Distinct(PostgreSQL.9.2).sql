BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT DISTINCT 
	p_2."ParentID", 
	p_2."Value1"
FROM
	"Parent" p_2
		INNER JOIN "Child" c_1 ON p_2."ParentID" = c_1."ParentID"
		INNER JOIN "GrandChild" g_1 ON c_1."ChildID" = g_1."ChildID"
ORDER BY
	p_2."ParentID"

