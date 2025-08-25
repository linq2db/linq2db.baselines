BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT /*+ INDEX(p parent_ix) */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p

