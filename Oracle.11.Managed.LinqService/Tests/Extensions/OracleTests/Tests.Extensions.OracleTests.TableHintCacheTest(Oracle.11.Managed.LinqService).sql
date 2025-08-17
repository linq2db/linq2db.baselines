BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT /*+ CACHE(p) */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p

