-- PostgreSQL.13 PostgreSQL12

SELECT
	t."ParentID",
	t."ChildID"
FROM
	"Child" t
FOR SHARE OF t

