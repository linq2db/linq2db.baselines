BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT /*+ PARALLEL(p DEFAULT) */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p

