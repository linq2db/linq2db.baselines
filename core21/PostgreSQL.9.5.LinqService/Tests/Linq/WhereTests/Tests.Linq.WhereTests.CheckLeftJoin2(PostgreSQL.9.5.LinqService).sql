BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
		LEFT JOIN "Child" lj1 ON p."ParentID" = lj1."ParentID"
WHERE
	(lj1."ParentID" IS NOT NULL OR lj1."ChildID" IS NOT NULL)

