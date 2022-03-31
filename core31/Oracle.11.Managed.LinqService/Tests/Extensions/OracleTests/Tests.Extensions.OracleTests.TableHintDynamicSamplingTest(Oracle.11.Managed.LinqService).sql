BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT /*+ DYNAMIC_SAMPLING(p 1) */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p

