BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	pmp."ParentID"
FROM
	"Child" pmp
GROUP BY
	pmp."ParentID"

BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

