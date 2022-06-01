BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT /*+ DYNAMIC_SAMPLING(p 1) */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p

