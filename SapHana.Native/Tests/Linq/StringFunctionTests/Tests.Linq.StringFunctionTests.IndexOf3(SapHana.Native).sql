-- SapHana.Native SapHana
DECLARE @n2 Integer -- Int32
SET     @n2 = 5
DECLARE @n1 Integer -- Int32
SET     @n1 = 2
DECLARE @s NVarChar(1) -- String
SET     @s = 'e'
DECLARE @n1_1 Integer -- Int32
SET     @n1_1 = 2

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	Locate(Substring(Left("p"."LastName", :"n2"),:"n1" + 1),:"s") + :"n1_1" - 1 = 4 AND
	"p"."PersonID" = 2

