-- SapHana.Native SapHana
DECLARE @fm VarChar(1) -- AnsiStringFixedLength
SET     @fm = 'F'

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	"p"."Gender" <> :"fm"

