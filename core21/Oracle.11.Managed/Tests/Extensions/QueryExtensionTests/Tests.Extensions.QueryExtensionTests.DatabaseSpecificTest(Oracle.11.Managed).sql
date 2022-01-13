BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT /*+ FULL(p) HASH(p) PARALLEL(2) */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p

