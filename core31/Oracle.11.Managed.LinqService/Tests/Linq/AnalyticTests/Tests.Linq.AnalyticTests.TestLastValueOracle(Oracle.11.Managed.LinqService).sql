BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	LAST_VALUE(p."Value1" IGNORE NULLS) OVER(),
	LAST_VALUE(p."Value1") OVER(PARTITION BY p."Value1", c_1."ChildID" ORDER BY p."Value1"),
	LAST_VALUE(p."Value1") OVER(PARTITION BY p."Value1", c_1."ChildID"),
	LAST_VALUE(p."Value1") OVER(ORDER BY p."Value1"),
	LAST_VALUE(p."Value1") OVER(ORDER BY p."Value1", c_1."ChildID" DESC)
FROM
	"Parent" p
		INNER JOIN "Child" c_1 ON p."ParentID" = c_1."ParentID"

