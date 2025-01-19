BeforeExecute
-- Firebird.4 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 3

SELECT DISTINCT
	"t1"."Value"
FROM
	"TakeSkipClass" "t1"
FETCH NEXT @take ROWS ONLY

