BeforeExecute
-- Firebird.3 Firebird3
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
FETCH NEXT @take ROWS ONLY

