BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"TakeSkipClass" "t1"
ORDER BY
	"t1"."Value"
FETCH NEXT @take ROWS ONLY

