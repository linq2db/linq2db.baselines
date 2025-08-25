BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT /*+ NO_INMEMORY(p) */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p

