﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @true_value VarChar(1) -- AnsiString
SET     @true_value = 'Y'

SELECT
	"t"."Id",
	"t"."Value1",
	"t"."Value2",
	"t"."BoolValue"
FROM
	"ValueConversion" "t"
WHERE
	"t"."BoolValue" = ?

