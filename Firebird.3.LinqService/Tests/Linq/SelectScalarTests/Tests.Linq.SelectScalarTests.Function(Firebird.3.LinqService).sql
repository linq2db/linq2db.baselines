BeforeExecute
-- Firebird.3 Firebird3
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	"c_1"."ChildID"
FROM
	"Child" "c_1"
FETCH NEXT @take ROWS ONLY

