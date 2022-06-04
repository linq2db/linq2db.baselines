BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT /*+ NO_INDEX_SS(p parent_ix parent2_ix) */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p

