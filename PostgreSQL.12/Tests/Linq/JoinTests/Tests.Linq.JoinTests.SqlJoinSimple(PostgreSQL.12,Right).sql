BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	p."ParentID",
	r."ChildID"
FROM
	"Parent" p
		RIGHT JOIN "Child" r ON p."ParentID" = r."ParentID"

