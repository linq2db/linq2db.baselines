-- SapHana.Odbc SapHanaOdbc
DECLARE @name Int -- Int32
SET     @name = 4

SELECT
	"t"."Id",
	"t"."Value",
	"t"."Money"
FROM
	"ParameterCastUnderCastTable" "t"
WHERE
	"t"."Value" = CAST(? AS NVarChar(11))

-- SapHana.Odbc SapHanaOdbc
DECLARE @name Int -- Int32
SET     @name = 4

SELECT
	"t"."Id",
	"t"."Value",
	"t"."Money"
FROM
	"ParameterCastUnderCastTable" "t"
WHERE
	"t"."Money" = CAST(? AS Decimal(38, 10))

