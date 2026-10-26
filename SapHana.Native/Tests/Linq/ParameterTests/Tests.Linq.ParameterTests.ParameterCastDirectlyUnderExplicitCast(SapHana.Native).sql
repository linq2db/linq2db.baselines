-- SapHana.Native SapHana
DECLARE @name Integer -- Int32
SET     @name = 4

SELECT
	"t"."Id",
	"t"."Value",
	"t"."Money"
FROM
	"ParameterCastUnderCastTable" "t"
WHERE
	"t"."Value" = CAST(:"name" AS NVarChar(11))

-- SapHana.Native SapHana
DECLARE @name Integer -- Int32
SET     @name = 4

SELECT
	"t"."Id",
	"t"."Value",
	"t"."Money"
FROM
	"ParameterCastUnderCastTable" "t"
WHERE
	"t"."Money" = CAST(:"name" AS Decimal(38, 10))

