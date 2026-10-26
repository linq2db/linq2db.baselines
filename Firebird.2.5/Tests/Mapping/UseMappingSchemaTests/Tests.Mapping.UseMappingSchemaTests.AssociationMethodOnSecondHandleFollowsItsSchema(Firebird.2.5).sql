-- Firebird.2.5 Firebird
SELECT
	"c_1"."ChildID",
	"a_GetParent"."Value1"
FROM
	"Parent" "p"
		INNER JOIN "Child" "c_1" ON "p"."ParentID" = "c_1"."ParentID"
		LEFT JOIN "Parent" "a_GetParent" ON "c_1"."ParentID" = "a_GetParent"."ParentID"
ORDER BY
	"c_1"."ChildID"

