-- PostgreSQL.18 PostgreSQL13

SELECT
	t."ParentID",
	t."ChildID"
FROM
	"Child" t
FOR SHARE OF t

