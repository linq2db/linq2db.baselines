BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT /*+ QB_NAME(PARENT) */
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

