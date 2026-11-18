-- Firebird.5 Firebird4
DECLARE @true_value VarChar -- String
SET     @true_value = 'Y'

SELECT
	"t"."Id",
	"t"."Value1",
	"t"."Value2",
	"t"."BoolValue"
FROM
	"ValueConversion" "t"
WHERE
	"t"."BoolValue" = @true_value

