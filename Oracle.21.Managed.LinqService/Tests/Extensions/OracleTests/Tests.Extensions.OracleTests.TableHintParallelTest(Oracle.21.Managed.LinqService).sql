BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT /*+ PARALLEL(p , 5) */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p

