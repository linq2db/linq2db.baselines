BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	MIN(p."Value1") OVER(PARTITION BY p."Value1", c_1."ChildID"),
	MIN(ALL p."Value1") OVER(PARTITION BY p."Value1", c_1."ChildID"),
	MIN(DISTINCT p."Value1") OVER(PARTITION BY p."Value1", c_1."ChildID"),
	MIN(p."Value1") OVER(PARTITION BY p."Value1", c_1."ChildID"),
	MIN(p."Value1") OVER(),
	MIN(ALL p."Value1") OVER(),
	MIN(DISTINCT p."Value1") OVER(),
	MIN(p."Value1") OVER(),
	MIN(p."Value1") OVER(ORDER BY p."Value1"),
	MIN(ALL p."Value1") OVER(PARTITION BY c_1."ChildID" ORDER BY p."Value1" RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW)
FROM
	"Parent" p
		INNER JOIN "Child" c_1 ON p."ParentID" = c_1."ParentID"

