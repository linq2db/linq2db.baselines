BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT /*+ PQ_SKEW(p) PQ_SKEW(c_1) */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
		INNER JOIN "Child" c_1 ON p."ParentID" = c_1."ParentID"

