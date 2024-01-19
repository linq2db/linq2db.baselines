BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	MIN(p."Value1") KEEP (DENSE_RANK FIRST ORDER BY p."Value1") OVER(PARTITION BY p."Value1", c_1."ChildID"),
	MAX(p."Value1") KEEP (DENSE_RANK FIRST ORDER BY p."Value1") OVER(PARTITION BY p."Value1", c_1."ChildID"),
	SUM(p."Value1") KEEP (DENSE_RANK FIRST ORDER BY p."Value1") OVER(PARTITION BY p."Value1", c_1."ChildID"),
	VARIANCE(p."Value1") KEEP (DENSE_RANK FIRST ORDER BY p."Value1") OVER(PARTITION BY p."Value1", c_1."ChildID")
FROM
	"Parent" p
		INNER JOIN "Child" c_1 ON p."ParentID" = c_1."ParentID"

