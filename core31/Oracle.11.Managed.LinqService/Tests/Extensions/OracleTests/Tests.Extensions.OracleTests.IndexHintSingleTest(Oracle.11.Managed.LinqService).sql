BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT /*+ INDEX(p parent_ix) */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p

