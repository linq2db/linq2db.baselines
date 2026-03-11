-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT /*+ FACT(p) */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p

