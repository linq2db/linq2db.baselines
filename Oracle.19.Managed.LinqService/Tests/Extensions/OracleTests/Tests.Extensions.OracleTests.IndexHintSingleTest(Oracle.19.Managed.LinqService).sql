BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT /*+ INDEX(p parent_ix) */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p

