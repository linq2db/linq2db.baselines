BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT /*+ PX_JOIN_FILTER(p) */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p

