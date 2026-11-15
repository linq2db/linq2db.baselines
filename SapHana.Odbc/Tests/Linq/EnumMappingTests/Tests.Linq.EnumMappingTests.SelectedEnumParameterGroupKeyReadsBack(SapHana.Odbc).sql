-- SapHana.Odbc SapHanaOdbc
DECLARE @gender Int -- Int32
SET     @gender = 1

SELECT
	"g_1"."Gender",
	?
FROM
	"Person" "g_1"
GROUP BY
	"g_1"."Gender"

-- SapHana.Odbc SapHanaOdbc
SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"

