BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT FIRST @take 
	"t1"."ParentID", 
	"t1"."ChildID", 
	"a_Parent"."ParentID", 
	"a_Parent"."Value1"
FROM
	"Child" "t1"
		INNER JOIN "Parent" "a_Parent" ON "t1"."ParentID" = "a_Parent"."ParentID"

