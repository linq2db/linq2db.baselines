BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	p."Value1",
	o."ChildID",
	p."ParentID"
FROM
	"Parent" p
		LEFT JOIN "Child" o ON p."ParentID" = o."ParentID"

