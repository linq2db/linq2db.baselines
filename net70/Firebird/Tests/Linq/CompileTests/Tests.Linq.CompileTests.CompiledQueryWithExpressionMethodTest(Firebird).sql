BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 1
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1

SELECT FIRST @take
	"x"."ParentID",
	"x"."Value1"
FROM
	"Parent" "x"
WHERE
	"x"."ParentID" = @ParentID
ORDER BY
	"x"."ParentID" DESC

