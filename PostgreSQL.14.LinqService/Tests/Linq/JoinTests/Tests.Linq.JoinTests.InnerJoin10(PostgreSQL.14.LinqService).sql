BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	p."ParentID",
	q1."GrandChildID"
FROM
	"Parent" p
		INNER JOIN "GrandChild" q1 ON p."ParentID" = q1."ParentID" AND q1."ParentID" IS NOT NULL

