-- SapHana.Native SapHana
DECLARE @Value VarChar(1) -- AnsiStringFixedLength
SET     @Value = 'F'

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
WHERE
	"p"."Gender" = :"Value"

-- SapHana.Native SapHana
SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"

