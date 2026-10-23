-- Firebird.5 Firebird4
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

-- Firebird.5 Firebird4
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

