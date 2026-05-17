-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
		CROSS JOIN "Child" ch

