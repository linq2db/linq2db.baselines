-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	pmp1."ChildID"
FROM
	"Child" pmp1
		CROSS JOIN (
			SELECT DISTINCT
				pmp."ParentID"
			FROM
				"Child" pmp
		) pmp_1

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

