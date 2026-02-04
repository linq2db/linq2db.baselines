-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	pmp1."ChildID"
FROM
	"Child" pmp1
		CROSS JOIN (
			SELECT
				pmp."ParentID"
			FROM
				"Child" pmp
			GROUP BY
				pmp."ParentID"
		) pmp_1

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

