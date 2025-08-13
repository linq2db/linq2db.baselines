BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT /*+ NO_INDEX_FFS(p parent_ix parent2_ix) */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p

