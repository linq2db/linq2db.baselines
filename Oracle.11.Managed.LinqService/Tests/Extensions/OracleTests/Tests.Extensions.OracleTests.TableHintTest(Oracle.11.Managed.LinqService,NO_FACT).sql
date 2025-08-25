BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT /*+ NO_FACT(p) */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p

