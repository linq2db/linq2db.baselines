BeforeExecute
-- Firebird.4 Firebird4
DECLARE @ChildID Integer -- Int32
SET     @ChildID = 10

UPDATE
	"Child"
SET
	"ChildID" = CAST(@ChildID AS Int)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Parent" "x"
				INNER JOIN "Child" "a_Children" ON "x"."ParentID" = "a_Children"."ParentID"
				INNER JOIN "Child" "a_Children_1" ON "a_Children"."ParentID" = "a_Children_1"."ChildID"
		WHERE
			1 = 0
	)

