-- SapHana.Native SapHana
DECLARE @Value Integer -- Int32
SET     @Value = 7
DECLARE @s NVarChar(1) -- String
SET     @s = 'e'
DECLARE @Value_1 Integer -- Int32
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
	Locate(Left("p"."LastName", :"Value"), :"s", :"Value_1") - 1 = 4 AND
	"p"."PersonID" = 2

