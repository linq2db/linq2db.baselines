BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT /*+ NO_FACT(p) */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p

