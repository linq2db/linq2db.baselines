-- Firebird.5 Firebird4

SELECT
	"t"."Str",
	CHAR_LENGTH("t"."Str"),
	'original-' || "t"."Str"
FROM
	"TestLengthModel" "t"

-- Firebird.5 Firebird4

SELECT
	"t1"."Id",
	"t1"."Str"
FROM
	"TestLengthModel" "t1"

