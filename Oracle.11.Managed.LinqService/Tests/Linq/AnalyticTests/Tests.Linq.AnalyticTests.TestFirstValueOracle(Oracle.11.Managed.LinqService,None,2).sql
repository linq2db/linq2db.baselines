BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	FIRST_VALUE(p."Value1") OVER(),
	FIRST_VALUE(p."Value1") OVER(PARTITION BY p."Value1", c_1."ChildID" ORDER BY p."Value1"),
	FIRST_VALUE(p."Value1") OVER(PARTITION BY p."Value1", c_1."ChildID"),
	FIRST_VALUE(p."Value1") OVER(ORDER BY p."Value1"),
	FIRST_VALUE(p."Value1") OVER(ORDER BY p."Value1", c_1."ChildID" DESC)
FROM
	"Parent" p
		INNER JOIN "Child" c_1 ON p."ParentID" = c_1."ParentID"

