-- Firebird.2.5 Firebird

SELECT
	"t"."Id",
	"t"."Value"
FROM
	"NullableBoolClass" "t"
WHERE
	"t"."Value" IS NULL

-- Firebird.2.5 Firebird

SELECT
	"t"."Id",
	"t"."Value"
FROM
	"NullableBoolClass" "t"
WHERE
	"t"."Value" IS NOT NULL

