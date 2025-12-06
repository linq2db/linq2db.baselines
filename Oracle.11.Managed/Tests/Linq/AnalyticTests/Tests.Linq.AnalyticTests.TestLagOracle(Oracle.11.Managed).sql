-- Oracle.11.Managed Oracle11

SELECT
	LAG(p."Value1", 1, 0) OVER(PARTITION BY p."Value1", c_1."ChildID" ORDER BY p."Value1"),
	LAG(p."Value1" IGNORE NULLS, 1, 0) OVER(ORDER BY p."Value1", c_1."ChildID" DESC),
	LAG(p."Value1", 1, 0) OVER(ORDER BY p."Value1", c_1."ChildID" DESC),
	LAG(p."Value1" IGNORE NULLS) OVER(PARTITION BY p."Value1", c_1."ChildID" ORDER BY p."Value1")
FROM
	"Parent" p
		INNER JOIN "Child" c_1 ON p."ParentID" = c_1."ParentID"

