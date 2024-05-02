BeforeExecute
-- Firebird.3 Firebird3

SELECT
	(
		SELECT
			"a_Children"."ParentID"
		FROM
			"Child" "a_Children"
		WHERE
			"a_Parent"."ParentID" IS NOT NULL AND "a_Parent"."ParentID" = "a_Children"."ParentID"
		ORDER BY
			"a_Children"."ChildID"
		FETCH NEXT 1 ROWS ONLY
	),
	(
		SELECT
			"a_Children_1"."ChildID"
		FROM
			"Child" "a_Children_1"
		WHERE
			"a_Parent"."ParentID" IS NOT NULL AND "a_Parent"."ParentID" = "a_Children_1"."ParentID"
		ORDER BY
			"a_Children_1"."ChildID"
		FETCH NEXT 1 ROWS ONLY
	)
FROM
	"GrandChild" "p"
		LEFT JOIN "Child" "a_Child" ON "p"."ParentID" = "a_Child"."ParentID" AND "p"."ChildID" = "a_Child"."ChildID"
		LEFT JOIN "Parent" "a_Parent" ON "a_Child"."ParentID" = "a_Parent"."ParentID"
WHERE
	"p"."ChildID" > 0

