-- Oracle.19.Managed Oracle.Managed Oracle12

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

-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

