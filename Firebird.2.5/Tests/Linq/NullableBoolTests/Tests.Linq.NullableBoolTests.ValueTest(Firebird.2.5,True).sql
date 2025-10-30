-- Firebird.2.5 Firebird
DECLARE @value Char -- String
SET     @value = '1'

SELECT
	"t"."Value"
FROM
	"NullableBoolClass" "t"
WHERE
	"t"."Value" = @value

-- Firebird.2.5 Firebird
DECLARE @value Char -- String
SET     @value = '1'

SELECT
	"t"."Value"
FROM
	"NullableBoolClass" "t"
WHERE
	"t"."Value" = @value

-- Firebird.2.5 Firebird
DECLARE @value Char -- String
SET     @value = '1'

SELECT
	"t"."Value"
FROM
	"NullableBoolClass" "t"
WHERE
	"t"."Value" <> @value OR "t"."Value" IS NULL

-- Firebird.2.5 Firebird
DECLARE @value Char -- String
SET     @value = '1'

SELECT
	"t"."Value"
FROM
	"NullableBoolClass" "t"
WHERE
	"t"."Value" <> @value

