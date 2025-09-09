BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	p."ParentID",
	q1."GrandChildID"
FROM
	"Parent" p
		INNER JOIN "GrandChild" q1 ON p."ParentID" = q1."ParentID"

