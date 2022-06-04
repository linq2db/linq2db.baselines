BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT /*+ INDEX_COMBINE(p parent_ix parent2_ix) */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p

