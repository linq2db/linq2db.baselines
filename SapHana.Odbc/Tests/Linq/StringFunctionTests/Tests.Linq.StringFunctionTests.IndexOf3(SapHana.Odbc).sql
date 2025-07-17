BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @n2 Int -- Int32
SET     @n2 = 5
DECLARE @n1 Int -- Int32
SET     @n1 = 2
DECLARE @s NVarChar(1) -- String
SET     @s = 'e'
DECLARE @n1 Int -- Int32
SET     @n1 = 2

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	Locate(Substring(Left("p"."LastName", ?),? + 1),?) + ? - 1 = 4 AND
	"p"."PersonID" = 2

