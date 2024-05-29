BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT /*+ INDEX_SS(p parent_ix parent2_ix) */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p

