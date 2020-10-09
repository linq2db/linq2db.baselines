BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT 
	x."ParentID", 
	x."ChildID", 
	x."GrandChildID"
FROM
	"GrandChild" x
WHERE
	x."ParentID" IN (2)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT 
	x."ParentID", 
	x."ChildID", 
	x."GrandChildID"
FROM
	"GrandChild" x
WHERE
	x."ParentID" IN (3)

