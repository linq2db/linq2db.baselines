-- Oracle.11.Managed Oracle11

SELECT /*+ INDEX_SS_DESC(p parent_ix parent2_ix) */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p

