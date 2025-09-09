BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT /*+ PARALLEL(p DEFAULT) */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p

