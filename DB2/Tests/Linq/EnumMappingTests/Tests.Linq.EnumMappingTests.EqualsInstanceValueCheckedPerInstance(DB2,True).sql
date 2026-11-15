-- DB2 DB2.LUW DB2LUW
DECLARE @Value VarChar(6) -- String
SET     @Value = 'Female'

SELECT
	"r"."Id"
FROM
	"ConvertedGenderRow" "r"
WHERE
	"r"."Gender" = @Value

