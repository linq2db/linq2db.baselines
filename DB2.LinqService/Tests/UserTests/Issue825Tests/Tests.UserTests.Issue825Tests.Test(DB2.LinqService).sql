BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @userId Integer(4) -- Int32
SET     @userId = 32
DECLARE @childId Integer(4) -- Int32
SET     @childId = 32

SELECT
	"child_1"."ParentID"
FROM
	"Parent" "child_1"
		INNER JOIN "Child" "a_Childs" ON "child_1"."ParentID" = "a_Childs"."ParentID"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"GrandChild" "permission"
		WHERE
			"child_1"."ParentID" = "permission"."ParentID" AND
			"permission"."ChildID" = @userId
	) AND
	"a_Childs"."ChildID" = @childId

