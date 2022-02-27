BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT /*+ MERGE(p) */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p

