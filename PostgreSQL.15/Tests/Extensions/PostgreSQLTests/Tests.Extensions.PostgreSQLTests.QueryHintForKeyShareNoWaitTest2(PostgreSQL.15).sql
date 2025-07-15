BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
		INNER JOIN "Child" c_1 ON p."ParentID" = c_1."ParentID"
FOR KEY SHARE OF p, c_1 NOWAIT

