-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 5

SELECT FIRST @take
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

