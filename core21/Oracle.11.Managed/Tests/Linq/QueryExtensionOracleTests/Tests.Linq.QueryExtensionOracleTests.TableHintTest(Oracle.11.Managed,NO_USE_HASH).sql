BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT /*+ NO_USE_HASH(p) */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p

