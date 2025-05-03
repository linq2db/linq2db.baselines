BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @true_value VarChar(1) -- String
SET     @true_value = 'Y'
DECLARE @true_value_1 VarChar(1) -- String
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

