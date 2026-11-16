-- SapHana.Native SapHana
DECLARE @api VarChar(1) -- AnsiStringFixedLength
SET     @api = 'F'

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
WHERE
	:"api" IN ("p"."Gender")

-- SapHana.Native SapHana
SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"

