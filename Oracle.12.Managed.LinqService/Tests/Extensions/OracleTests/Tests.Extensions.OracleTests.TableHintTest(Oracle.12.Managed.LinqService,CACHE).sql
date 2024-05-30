BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT /*+ CACHE(p) */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p

