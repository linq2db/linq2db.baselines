BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT /*+ FULL(p) */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p

