-- Firebird.2.5 Firebird
DECLARE @name Integer -- Int32
SET     @name = 4

SELECT
	"t"."Id",
	"t"."Value",
	"t"."Money"
FROM
	"ParameterCastUnderCastTable" "t"
WHERE
	"t"."Value" = CAST(@name AS VARCHAR(8191))

-- Firebird.2.5 Firebird
DECLARE @name Integer -- Int32
SET     @name = 4

SELECT
	"t"."Id",
	"t"."Value",
	"t"."Money"
FROM
	"ParameterCastUnderCastTable" "t"
WHERE
	"t"."Money" = CAST(@name AS Decimal(18, 10))

