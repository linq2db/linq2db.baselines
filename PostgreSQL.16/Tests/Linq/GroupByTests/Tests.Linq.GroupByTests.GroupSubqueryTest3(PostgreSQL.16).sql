-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT DISTINCT
	pmp."ParentID"
FROM
	"Child" pmp

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

