BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT /*+ PARALLEL(p, DEFAULT) */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p

