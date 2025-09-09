BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	MAX(p."Value1") OVER(PARTITION BY p."Value1", c_1."ChildID"),
	MAX(ALL p."Value1") OVER(PARTITION BY p."Value1", c_1."ChildID"),
	MAX(DISTINCT p."Value1") OVER(PARTITION BY p."Value1", c_1."ChildID"),
	MAX(p."Value1") OVER(PARTITION BY p."Value1", c_1."ChildID"),
	MAX(p."Value1") OVER(),
	MAX(ALL p."Value1") OVER(),
	MAX(DISTINCT p."Value1") OVER(),
	MAX(p."Value1") OVER(),
	MAX(p."Value1") OVER(ORDER BY p."Value1"),
	MAX(ALL p."Value1") OVER(PARTITION BY c_1."ChildID" ORDER BY p."Value1" RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW)
FROM
	"Parent" p
		INNER JOIN "Child" c_1 ON p."ParentID" = c_1."ParentID"

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	MAX(ALL p."Value1")
FROM
	"Parent" p
		INNER JOIN "Child" c_1 ON p."ParentID" = c_1."ParentID"

