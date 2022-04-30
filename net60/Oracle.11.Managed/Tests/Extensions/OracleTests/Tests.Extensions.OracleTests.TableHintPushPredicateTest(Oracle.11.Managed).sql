BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT /*+ PUSH_PRED(p) */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p

