BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	COUNT(*)
FROM
	"Parent" "parent_2"
		CROSS JOIN "Child" "child_1"
		LEFT JOIN "GrandChild" "grandChild_1" ON "child_1"."ParentID" = "grandChild_1"."ParentID" AND "child_1"."ChildID" = "grandChild_1"."ChildID"
		CROSS JOIN "Parent" "parent_1"

