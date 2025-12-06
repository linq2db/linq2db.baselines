-- Firebird.4 Firebird4
DECLARE @true_value VarChar -- String
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
				"t2"."BoolValue" = @true_value
		) "t2_1" ON "t1"."BoolValue" = @true_value

