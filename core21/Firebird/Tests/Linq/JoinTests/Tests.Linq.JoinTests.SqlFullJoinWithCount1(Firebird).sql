BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT FIRST @take 
	COUNT("left_1"."ParentID"), 
	COUNT("p"."ParentID"), 
	COUNT(*)
FROM
	"Parent" "left_1"
		FULL JOIN "Parent" "p" ON "p"."ParentID" = "left_1"."ParentID"

