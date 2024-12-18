BeforeExecute
-- Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"Parent" "t1"
		CROSS JOIN "Parent" "s"
		CROSS JOIN "Child" "child_1"
		LEFT JOIN "GrandChild" "grandChild_1" ON "child_1"."ParentID" = "grandChild_1"."ParentID" AND "grandChild_1"."ParentID" IS NOT NULL AND "child_1"."ChildID" = "grandChild_1"."ChildID" AND "grandChild_1"."ChildID" IS NOT NULL

