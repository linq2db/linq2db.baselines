BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @userId  -- Int32
SET     @userId = 32
DECLARE @childId  -- Int32
SET     @childId = 32

SELECT
	"a_Parent"."ParentID"
FROM
	"Parent" "child_1"
		INNER JOIN "Child" "a_Childs" ON "child_1"."ParentID" = "a_Childs"."ParentID"
		LEFT JOIN "Parent" "a_Parent" ON "a_Childs"."ParentID" = "a_Parent"."ParentID"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"GrandChild" "permission"
		WHERE
			"child_1"."ParentID" = "permission"."ParentID" AND
			"permission"."ChildID" = ?
	) AND
	"a_Childs"."ChildID" = ?

