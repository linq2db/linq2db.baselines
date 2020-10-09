BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT FIRST @take 
	"p"."ParentID", 
	"p"."Value1"
FROM
	"Parent" "p"
		INNER JOIN "Child" "c_1" ON "p"."ParentID" = "c_1"."ParentID"
WHERE
	"c_1"."ChildID" > 20 AND "p"."ParentID" = 3

