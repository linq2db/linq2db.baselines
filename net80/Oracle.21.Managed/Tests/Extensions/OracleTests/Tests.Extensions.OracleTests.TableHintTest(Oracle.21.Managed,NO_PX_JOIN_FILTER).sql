BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT /*+ NO_PX_JOIN_FILTER(p) */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p

