BeforeExecute
-- Firebird3 Firebird
DECLARE @take Integer -- Int32
SET     @take = 5

SELECT FIRST @take
	Cast(CURRENT_TIMESTAMP as Date),
	Count(*)
FROM
	"Parent" "v"
		INNER JOIN "Child" "s" ON "v"."ParentID" = "s"."ParentID"
WHERE
	"v"."Value1" > 0

