BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT /*+ NMEMORY(p) */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p

