BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

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

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

