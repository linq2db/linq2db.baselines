BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT FIRST @take
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"
ORDER BY
	"t1"."ParentID"

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

