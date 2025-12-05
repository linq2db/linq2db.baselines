-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT /*+ HASH(p) */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p

