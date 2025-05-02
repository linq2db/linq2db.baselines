BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @true_value VarChar -- String
SET     @true_value = 'Y'
DECLARE @true_value_1 VarChar -- String
SET     @true_value_1 = 'Y'

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
				"t2"."BoolValue" = @true_value
		) "t2_1" ON "t1"."BoolValue" = @true_value_1

