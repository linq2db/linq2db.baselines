BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)
DECLARE @take Integer -- Int32
SET     @take = 3

SELECT DISTINCT
	"r"."Value"
FROM
	"TakeSkipClass" "r"
FETCH NEXT @take ROWS ONLY

