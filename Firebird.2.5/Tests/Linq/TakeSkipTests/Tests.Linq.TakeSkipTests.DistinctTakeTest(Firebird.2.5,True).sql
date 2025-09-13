BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 3

SELECT FIRST @take DISTINCT
	"r"."Value"
FROM
	"TakeSkipClass" "r"

