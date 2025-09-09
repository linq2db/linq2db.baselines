BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	NTILE(p."Value1") OVER(PARTITION BY p."Value1", c_1."ChildID" ORDER BY p."Value1"),
	NTILE(1) OVER(ORDER BY p."Value1", c_1."ChildID" DESC)
FROM
	"Parent" p
		INNER JOIN "Child" c_1 ON p."ParentID" = c_1."ParentID"

