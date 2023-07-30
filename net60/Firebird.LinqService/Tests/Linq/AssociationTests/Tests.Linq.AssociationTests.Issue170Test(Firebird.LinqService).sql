BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT FIRST @take
	"a_Parent"."Value1"
FROM
	"Parent" "x"
		LEFT JOIN "Parent" "a_Parent" ON "x"."ParentID" = "a_Parent"."Value1"
WHERE
	"x"."Value1" IS NULL

