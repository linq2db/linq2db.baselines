BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT /*+ CACHE(p) */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p

