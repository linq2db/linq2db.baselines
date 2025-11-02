-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1
EXCEPT
SELECT
	p."ParentID",
	p."ChildID"
FROM
	"Child" p
WHERE
	p."ParentID" = 3

