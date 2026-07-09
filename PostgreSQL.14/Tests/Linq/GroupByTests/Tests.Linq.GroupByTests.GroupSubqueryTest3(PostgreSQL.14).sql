-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12

SELECT DISTINCT
	pmp."ParentID"
FROM
	"Child" pmp

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

