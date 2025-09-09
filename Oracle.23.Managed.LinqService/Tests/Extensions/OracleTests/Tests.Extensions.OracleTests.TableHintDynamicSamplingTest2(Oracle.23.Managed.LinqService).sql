BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT /*+ DYNAMIC_SAMPLING(p 1) */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p

