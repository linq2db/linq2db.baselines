BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT /*+ PARALLEL(p DEFAULT) */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p

