BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT 
	p."ParentID", 
	q."GrandChildID"
FROM
	"Parent" p
		INNER JOIN "GrandChild" q ON p."ParentID" = q."ParentID"

