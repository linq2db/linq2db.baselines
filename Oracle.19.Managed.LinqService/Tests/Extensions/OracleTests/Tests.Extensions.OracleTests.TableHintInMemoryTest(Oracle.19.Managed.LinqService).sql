BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT /*+ NMEMORY(p) */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p

