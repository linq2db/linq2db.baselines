BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	t."ParentID",
	t."ChildID"
FROM
	"Child" t
FOR SHARE OF t

