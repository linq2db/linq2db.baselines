-- Firebird.3 Firebird3

SELECT
	"t"."Str",
	CHAR_LENGTH("t"."Str"),
	'original-' || "t"."Str"
FROM
	"TestLengthModel" "t"

-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Str"
FROM
	"TestLengthModel" "t1"

