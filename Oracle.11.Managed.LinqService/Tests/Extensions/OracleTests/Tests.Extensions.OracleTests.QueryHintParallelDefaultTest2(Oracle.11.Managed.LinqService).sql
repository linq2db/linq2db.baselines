BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT /*+ PQ_DISTRIBUTE(p PARTITION, NONE) */
	p."ParentID",
	p."Value1"
FROM
	"Child" t1,
	"Parent" p
WHERE
	t1."ParentID" = p."ParentID"

