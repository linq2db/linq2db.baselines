-- SapHana.Native SapHana
DECLARE @skip Integer -- Int32
SET     @skip = 3

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"TakeSkipClass" "t1"
ORDER BY
	"t1"."Value"
LIMIT 4200000000 OFFSET :"skip"

-- SapHana.Native SapHana
DECLARE @skip Integer -- Int32
SET     @skip = 4

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"TakeSkipClass" "t1"
ORDER BY
	"t1"."Value"
LIMIT 4200000000 OFFSET :"skip"

