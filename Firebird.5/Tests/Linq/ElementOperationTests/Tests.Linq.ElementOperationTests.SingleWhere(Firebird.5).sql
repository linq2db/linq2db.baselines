BeforeExecute
-- Firebird.5 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = 2
FETCH NEXT @take ROWS ONLY

