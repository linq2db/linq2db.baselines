BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @childId  -- Int32
SET     @childId = 32
DECLARE @userId  -- Int32
SET     @userId = 32

SELECT
	"p"."ParentID"
FROM
	"Parent" "p"
		INNER JOIN "Child" "c_1" ON "p"."ParentID" = "c_1"."ParentID"
WHERE
	"c_1"."ChildID" = ? AND EXISTS(
		SELECT
			*
		FROM
			"GrandChild" "permission"
		WHERE
			"p"."ParentID" = "permission"."ParentID" AND "permission"."ChildID" = ?
	)

