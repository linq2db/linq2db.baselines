﻿BeforeExecute
-- Firebird.3 Firebird3
DECLARE @false_value VarChar -- String
SET     @false_value = 'N'

SELECT
	"t"."Id",
	"t"."Value1",
	"t"."Value2",
	"t"."BoolValue"
FROM
	"ValueConversion" "t"
WHERE
	"t"."BoolValue" = @false_value

