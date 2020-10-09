BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 1

SELECT 
	p."ParentID", 
	p."Value1", 
	c_1."ParentID", 
	c_1."ChildID", 
	g_1."ParentID", 
	g_1."ChildID", 
	g_1."GrandChildID"
FROM
	"Parent" p
		INNER JOIN "Child" c_1 ON p."ParentID" = c_1."ChildID"
		INNER JOIN "GrandChild" g_1 ON p."ParentID" = g_1."ParentID"
WHERE
	p."ParentID" = :id AND c_1."ChildID" > 0

