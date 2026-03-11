-- Oracle.11.Managed Oracle11

SELECT /*+ PQ_DISTRIBUTE(p PARTITION, NONE) */
	p."ParentID",
	p."Value1"
FROM
	"Child" c_1,
	"Parent" p
WHERE
	c_1."ParentID" = p."ParentID"

