BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT /*+ PQ_CONCURRENT_UNION */
	p."ParentID",
	p."Value1"
FROM
	"Child" c_1
		INNER JOIN "Parent" p ON c_1."ParentID" = p."ParentID"

