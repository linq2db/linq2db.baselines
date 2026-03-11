-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT /*+ INDEX_FFS(p parent_ix parent2_ix) */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p

