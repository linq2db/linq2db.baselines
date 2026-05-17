-- Firebird.4 Firebird4
DECLARE @skip Integer -- Int32
SET     @skip = 3

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"TakeSkipClass" "t1"
ORDER BY
	"t1"."Value"
OFFSET @skip ROWS

