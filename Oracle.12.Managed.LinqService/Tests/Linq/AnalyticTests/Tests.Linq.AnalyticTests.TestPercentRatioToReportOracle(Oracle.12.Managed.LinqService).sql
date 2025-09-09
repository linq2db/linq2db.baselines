BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	RATIO_TO_REPORT(1) OVER(PARTITION BY p."Value1", c_1."ChildID"),
	RATIO_TO_REPORT(c_1."ChildID") OVER()
FROM
	"Parent" p
		INNER JOIN "Child" c_1 ON p."ParentID" = c_1."ParentID"

