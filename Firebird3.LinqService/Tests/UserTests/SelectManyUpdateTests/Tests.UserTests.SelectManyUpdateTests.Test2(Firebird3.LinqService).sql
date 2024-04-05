BeforeExecute
-- Firebird3 Firebird

UPDATE
	"Child"
SET
	"ChildID" = 10
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Parent" "x"
				INNER JOIN "Child" "a_Children" ON "x"."ParentID" = "a_Children"."ParentID"
				INNER JOIN "Child" "a_Children_1" ON "a_Children"."ParentID" = "a_Children_1"."ChildID"
		WHERE
			1 = 0 AND "Child"."ParentID" = "a_Children_1"."ParentID"
	)

