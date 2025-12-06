-- Firebird.2.5 Firebird

SELECT FIRST 2 SKIP 3
	"t1"."Id",
	"t1"."Value"
FROM
	"TakeSkipClass" "t1"
ORDER BY
	"t1"."Value"

