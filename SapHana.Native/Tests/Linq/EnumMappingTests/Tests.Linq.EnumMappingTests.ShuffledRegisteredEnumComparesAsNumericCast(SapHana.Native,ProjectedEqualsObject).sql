-- SapHana.Native SapHana
DECLARE @boxed VarChar(1) -- AnsiStringFixedLength
SET     @boxed = 'M'

SELECT
	"p"."PersonID",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	"p"."Gender" = :"boxed"

-- SapHana.Native SapHana
SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"

