-- Firebird.4 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 5

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"
FETCH NEXT @take ROWS ONLY

