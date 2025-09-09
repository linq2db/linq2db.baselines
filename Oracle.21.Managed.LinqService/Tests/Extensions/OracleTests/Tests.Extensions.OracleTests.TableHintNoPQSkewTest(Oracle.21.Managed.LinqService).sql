BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT /*+ NO_PQ_SKEW(p) */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p

