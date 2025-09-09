BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT /*+ PUSH_PRED(p) */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p

