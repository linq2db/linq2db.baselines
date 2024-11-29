BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT /*+ PARALLEL_INDEX(p, index1, 3) */
	p."ParentID",
	p."Value1"
FROM
	"Child" c_1,
	"Parent" p
WHERE
	c_1."ParentID" = p."ParentID"

