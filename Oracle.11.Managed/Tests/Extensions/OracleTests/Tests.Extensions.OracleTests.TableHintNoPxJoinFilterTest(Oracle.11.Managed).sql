-- Oracle.11.Managed Oracle11

SELECT /*+ NO_PX_JOIN_FILTER(p) */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p

