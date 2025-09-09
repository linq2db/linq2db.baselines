BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT /*+ DRIVING_SITE(p) */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p

