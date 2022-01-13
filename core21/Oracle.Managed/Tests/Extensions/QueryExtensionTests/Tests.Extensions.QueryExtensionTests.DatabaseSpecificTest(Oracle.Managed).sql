BeforeExecute
-- Oracle.Managed Oracle12

SELECT /*+ FULL(p) HASH(p) PARALLEL(2) */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p

