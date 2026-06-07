-- Firebird.3 Firebird3
DECLARE @take Integer -- Int32
SET     @take = 3

SELECT DISTINCT
	"p"."Value1"
FROM
	"Parent" "p"
ORDER BY
	"p"."Value1" NULLS LAST
FETCH NEXT @take ROWS ONLY

-- Firebird.3 Firebird3

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

