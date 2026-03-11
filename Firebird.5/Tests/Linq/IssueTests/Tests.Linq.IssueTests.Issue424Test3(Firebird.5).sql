-- Firebird.5 Firebird4
DECLARE @skip Integer -- Int32
SET     @skip = 1
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT DISTINCT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"
ORDER BY
	"t1"."ParentID" DESC
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

-- Firebird.5 Firebird4

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

