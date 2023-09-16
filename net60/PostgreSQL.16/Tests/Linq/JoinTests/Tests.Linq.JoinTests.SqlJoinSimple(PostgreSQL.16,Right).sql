BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	p."ParentID",
	r."ChildID"
FROM
	"Parent" p
		RIGHT JOIN "Child" r ON p."ParentID" = r."ParentID"

