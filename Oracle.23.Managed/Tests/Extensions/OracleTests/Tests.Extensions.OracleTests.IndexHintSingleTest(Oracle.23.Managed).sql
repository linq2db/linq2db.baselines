-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT /*+ INDEX(p parent_ix) */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p

