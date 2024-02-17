BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT /*+ PQ_DISTRIBUTE(p PARTITION, NONE) */
	p."ParentID",
	p."Value1"
FROM
	"Child" t1
		CROSS JOIN "Parent" p
WHERE
	t1."ParentID" = p."ParentID"

