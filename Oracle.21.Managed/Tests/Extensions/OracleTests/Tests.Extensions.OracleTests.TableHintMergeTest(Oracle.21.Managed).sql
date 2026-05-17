-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT /*+ MERGE(p) */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p

