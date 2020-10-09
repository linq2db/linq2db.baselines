BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT 
	p."ParentID", 
	q."GrandChildID"
FROM
	"Parent" p
		INNER JOIN "GrandChild" q ON p."ParentID" = q."ParentID"

