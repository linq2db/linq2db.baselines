BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT /*+ DRIVING_SITE(p) */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p

