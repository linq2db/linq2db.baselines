-- Firebird.3 Firebird3

SELECT
	"t"."Id",
	"t"."Value"
FROM
	"NullableBoolClass" "t"
WHERE
	"t"."Value" IS NULL

-- Firebird.3 Firebird3

SELECT
	"t"."Id",
	"t"."Value"
FROM
	"NullableBoolClass" "t"
WHERE
	"t"."Value" IS NOT NULL

