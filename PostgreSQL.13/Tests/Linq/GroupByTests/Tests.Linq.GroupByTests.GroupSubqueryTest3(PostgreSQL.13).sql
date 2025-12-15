-- PostgreSQL.13 PostgreSQL

SELECT
	pmp."ParentID"
FROM
	"Child" pmp
GROUP BY
	pmp."ParentID"

-- PostgreSQL.13 PostgreSQL

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

