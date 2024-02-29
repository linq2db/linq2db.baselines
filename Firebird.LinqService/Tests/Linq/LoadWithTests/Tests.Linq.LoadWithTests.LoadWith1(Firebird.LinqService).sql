BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT FIRST @take
	"t"."ParentID",
	"t"."ChildID",
	"a_Parent"."ParentID",
	"a_Parent"."Value1"
FROM
	"Child" "t"
		LEFT JOIN "Parent" "a_Parent" ON "t"."ParentID" = "a_Parent"."ParentID"

