-- Oracle.11.Managed Oracle11

SELECT
	pmp1."ChildID"
FROM
	"Child" pmp1
		CROSS JOIN (
			SELECT DISTINCT
				g_1."ParentID"
			FROM
				"Child" g_1
		) pmp

-- Oracle.11.Managed Oracle11

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

