-- Firebird.4 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 3

SELECT DISTINCT
	"r"."Value"
FROM
	"TakeSkipClass" "r"
FETCH NEXT @take ROWS ONLY

