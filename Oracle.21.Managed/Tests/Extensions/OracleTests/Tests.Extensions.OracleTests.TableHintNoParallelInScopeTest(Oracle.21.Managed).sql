BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT /*+ NO_PARALLEL(p) NO_PARALLEL(c_1) */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
		INNER JOIN "Child" c_1 ON p."ParentID" = c_1."ParentID"

