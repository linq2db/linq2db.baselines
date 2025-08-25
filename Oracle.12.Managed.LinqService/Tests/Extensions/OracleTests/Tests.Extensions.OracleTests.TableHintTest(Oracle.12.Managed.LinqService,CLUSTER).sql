BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT /*+ CLUSTER(p) */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p

