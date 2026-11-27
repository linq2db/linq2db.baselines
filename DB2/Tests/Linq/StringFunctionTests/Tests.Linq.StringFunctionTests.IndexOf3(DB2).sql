-- DB2 DB2.LUW DB2LUW
DECLARE @s VarChar(1) -- String
SET     @s = 'e'
DECLARE @Value Integer(4) -- Int32
SET     @Value = 7
DECLARE @Value_1 Integer(4) -- Int32
SET     @Value_1 = 3

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	Locate(CAST(@s AS NVarChar(1)), Left("p"."LastName", CAST(@Value AS Int)), CAST(@Value_1 AS Int)) - 1 = 4 AND
	"p"."PersonID" = 2

