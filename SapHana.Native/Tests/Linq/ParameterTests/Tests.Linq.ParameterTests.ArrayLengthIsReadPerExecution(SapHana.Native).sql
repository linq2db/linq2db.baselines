-- SapHana.Native SapHana
DECLARE @arr Integer -- Int32
SET     @arr = 1

SELECT
	"t"."Id",
	"t"."Value"
FROM
	"ArrayLengthTable" "t"
WHERE
	"t"."Id" = :"arr"
LIMIT 2

-- SapHana.Native SapHana
DECLARE @arr Integer -- Int32
SET     @arr = 2

SELECT
	"t"."Id",
	"t"."Value"
FROM
	"ArrayLengthTable" "t"
WHERE
	"t"."Id" = :"arr"
LIMIT 2

