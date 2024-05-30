BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT /*+ NO_PARALLEL_INDEX(p, index1) */
	p."ParentID",
	p."Value1"
FROM
	"Child" t1,
	"Parent" p
WHERE
	t1."ParentID" = p."ParentID"

