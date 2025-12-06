-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT /*+ PX_JOIN_FILTER(p) */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p

