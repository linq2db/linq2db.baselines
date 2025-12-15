-- Oracle.11.Managed Oracle11

SELECT /*+ FULL(p) LEADING(p c_1) */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
		CROSS JOIN "Child" c_1

