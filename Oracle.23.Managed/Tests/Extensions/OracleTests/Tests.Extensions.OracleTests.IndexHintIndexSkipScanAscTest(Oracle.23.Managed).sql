-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT /*+ INDEX_SS_ASC(p parent_ix parent2_ix) */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p

