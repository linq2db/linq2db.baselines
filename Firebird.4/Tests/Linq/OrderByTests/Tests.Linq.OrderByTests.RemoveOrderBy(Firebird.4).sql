-- Firebird.4 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"
ORDER BY
	"t1"."ParentID"
FETCH NEXT @take ROWS ONLY

-- Firebird.4 Firebird4

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

