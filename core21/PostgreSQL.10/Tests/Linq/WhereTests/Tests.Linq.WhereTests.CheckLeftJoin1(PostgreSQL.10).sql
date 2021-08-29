BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
		LEFT JOIN "Child" lj1 ON p."ParentID" = lj1."ParentID"
WHERE
	(lj1."ParentID" IS NULL AND lj1."ChildID" IS NULL)

