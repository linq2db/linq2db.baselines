-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 3

SELECT FIRST @take DISTINCT
	"p"."Value1"
FROM
	"Parent" "p"
ORDER BY
	"p"."Value1" NULLS LAST

-- Firebird.2.5 Firebird

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

