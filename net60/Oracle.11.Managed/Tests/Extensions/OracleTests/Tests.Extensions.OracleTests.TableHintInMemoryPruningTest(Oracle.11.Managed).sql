BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT /*+ INMEMORY_PRUNING(p) */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p

