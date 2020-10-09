BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT 
	Coalesce((
		SELECT FIRST @take 
			"a_Parent"."Value1"
		FROM
			"Child" "ch"
				LEFT JOIN "Parent" "a_Parent" ON "ch"."ParentID" = "a_Parent"."ParentID"
		WHERE
			"ch"."ChildID" = "c_1"."ChildID"
	), "c_1"."ChildID")
FROM
	"Child" "c_1"

