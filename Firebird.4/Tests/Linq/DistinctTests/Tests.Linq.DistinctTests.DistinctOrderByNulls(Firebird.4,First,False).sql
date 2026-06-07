-- Firebird.4 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 3

SELECT DISTINCT
	"p"."Value1"
FROM
	"Parent" "p"
ORDER BY
	"p"."Value1"
FETCH NEXT @take ROWS ONLY

-- Firebird.4 Firebird4

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

