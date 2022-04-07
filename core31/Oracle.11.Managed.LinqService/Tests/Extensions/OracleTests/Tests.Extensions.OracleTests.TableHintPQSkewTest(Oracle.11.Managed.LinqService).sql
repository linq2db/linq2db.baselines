BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT /*+ PQ_SKEW(p) */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p

