BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT /*+ FULL(p) LEADING(p c_1) */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
		CROSS JOIN "Child" c_1

