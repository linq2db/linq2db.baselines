-- SapHana.Native SapHana
SELECT
	"t"."Str",
	Length("t"."Str"),
	'original-' || Coalesce("t"."Str", '')
FROM
	"TestLengthModel" "t"

-- SapHana.Native SapHana
SELECT
	"t1"."Id",
	"t1"."Str"
FROM
	"TestLengthModel" "t1"

