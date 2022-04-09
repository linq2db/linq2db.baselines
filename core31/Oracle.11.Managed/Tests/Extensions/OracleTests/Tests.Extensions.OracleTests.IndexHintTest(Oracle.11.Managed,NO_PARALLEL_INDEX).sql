BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT /*+ NO_PARALLEL_INDEX(p parent_ix parent2_ix) */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p

