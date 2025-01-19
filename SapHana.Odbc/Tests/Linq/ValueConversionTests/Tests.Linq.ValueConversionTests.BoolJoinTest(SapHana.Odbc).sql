BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @true_value VarChar(1) -- AnsiString
SET     @true_value = 'Y'
DECLARE @true_value VarChar(1) -- AnsiString
SET     @true_value = 'Y'

SELECT
	"t1"."Enum"
FROM
	"ValueConversion" "t1"
		INNER JOIN (
			SELECT
				*
			FROM
				"ValueConversion" "t2"
			WHERE
				"t2"."BoolValue" = ?
		) "t2_1" ON "t1"."BoolValue" = ?

