-- Oracle.11.Managed Oracle11

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
		CROSS JOIN "Child" ch

