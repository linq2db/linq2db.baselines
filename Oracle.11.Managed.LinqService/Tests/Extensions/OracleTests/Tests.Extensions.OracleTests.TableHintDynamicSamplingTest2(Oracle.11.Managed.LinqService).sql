BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT /*+ DYNAMIC_SAMPLING(p 1) */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p

