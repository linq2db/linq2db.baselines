-- DB2 DB2.LUW DB2LUW
DECLARE @Value VarChar(6) -- String
SET     @Value = 'Female'

SELECT
	"r"."Id"
FROM
	"ConvertedGenderRow" "r"
WHERE
	"r"."Gender" = @Value

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Id",
	"t1"."Gender"
FROM
	"ConvertedGenderRow" "t1"

