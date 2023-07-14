BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	pmp1."ChildID"
FROM
	(
		SELECT
			t1."ParentID"
		FROM
			"Child" t1
		GROUP BY
			t1."ParentID"
	) pmp,
	"Child" pmp1

