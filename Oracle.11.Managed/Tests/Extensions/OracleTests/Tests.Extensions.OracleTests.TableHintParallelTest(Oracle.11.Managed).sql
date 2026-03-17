-- Oracle.11.Managed Oracle11

SELECT /*+ PARALLEL(p , 5) */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p

