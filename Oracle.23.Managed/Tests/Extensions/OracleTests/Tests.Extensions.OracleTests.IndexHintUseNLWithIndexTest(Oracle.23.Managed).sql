-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT /*+ USE_NL_WITH_INDEX(p parent_ix parent2_ix) */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p

