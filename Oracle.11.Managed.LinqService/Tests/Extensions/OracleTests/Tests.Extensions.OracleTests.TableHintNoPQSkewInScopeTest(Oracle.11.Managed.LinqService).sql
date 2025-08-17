BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT /*+ NO_PQ_SKEW(p) NO_PQ_SKEW(c_1) */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
		INNER JOIN "Child" c_1 ON p."ParentID" = c_1."ParentID"

