BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	COUNT(*) OVER(PARTITION BY p."Value1", c_1."ChildID"),
	COUNT(p."Value1") OVER(PARTITION BY p."Value1", c_1."ChildID"),
	COUNT(ALL p."Value1") OVER(PARTITION BY p."Value1", c_1."ChildID"),
	COUNT(DISTINCT p."Value1") OVER(PARTITION BY p."Value1", c_1."ChildID"),
	COUNT(p."Value1") OVER(PARTITION BY p."Value1", c_1."ChildID"),
	COUNT(*) OVER(),
	COUNT(p."Value1") OVER(),
	COUNT(ALL p."Value1") OVER(),
	COUNT(DISTINCT p."Value1") OVER(),
	COUNT(p."Value1") OVER(),
	COUNT(ALL p."Value1") OVER(PARTITION BY c_1."ChildID" ORDER BY p."Value1" RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW)
FROM
	"Parent" p
		INNER JOIN "Child" c_1 ON p."ParentID" = c_1."ParentID"

