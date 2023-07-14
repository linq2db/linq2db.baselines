BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

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

