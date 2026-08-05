-- Firebird.5 Firebird4
DECLARE @value Boolean
SET     @value = TRUE

SELECT
	"t"."Id",
	"t"."Value"
FROM
	"NullableBoolClass" "t"
WHERE
	"t"."Value" = @value

-- Firebird.5 Firebird4
DECLARE @value Boolean
SET     @value = TRUE

SELECT
	"t"."Id",
	"t"."Value"
FROM
	"NullableBoolClass" "t"
WHERE
	"t"."Value" = @value

-- Firebird.5 Firebird4
DECLARE @value Boolean
SET     @value = TRUE

SELECT
	"t"."Id",
	"t"."Value"
FROM
	"NullableBoolClass" "t"
WHERE
	"t"."Value" <> @value OR "t"."Value" IS NULL

-- Firebird.5 Firebird4
DECLARE @value Boolean
SET     @value = TRUE

SELECT
	"t"."Id",
	"t"."Value"
FROM
	"NullableBoolClass" "t"
WHERE
	"t"."Value" <> @value

