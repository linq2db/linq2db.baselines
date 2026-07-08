-- PostgreSQL.13 PostgreSQL12

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1
LIMIT 5 OFFSET 2 

