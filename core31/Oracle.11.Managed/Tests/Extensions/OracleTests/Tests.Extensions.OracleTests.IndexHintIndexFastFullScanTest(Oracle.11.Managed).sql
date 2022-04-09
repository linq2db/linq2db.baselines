BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT /*+ INDEX_FFS(p parent_ix parent2_ix) */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p

