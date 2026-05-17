-- PostgreSQL.13 PostgreSQL

SELECT
	t."ParentID",
	t."ChildID"
FROM
	"Child" t
FOR SHARE OF t

