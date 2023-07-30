BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT /*+ DRIVING_SITE(p) */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p

