BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT /*+ NO_PARALLEL_INDEX(p, index1) */
	p."ParentID",
	p."Value1"
FROM
	"Child" c_1,
	"Parent" p
WHERE
	c_1."ParentID" = p."ParentID"

