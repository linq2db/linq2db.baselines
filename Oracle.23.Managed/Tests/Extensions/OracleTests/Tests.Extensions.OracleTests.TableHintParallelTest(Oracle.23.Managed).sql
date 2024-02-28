BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT /*+ PARALLEL(p , 5) */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p

