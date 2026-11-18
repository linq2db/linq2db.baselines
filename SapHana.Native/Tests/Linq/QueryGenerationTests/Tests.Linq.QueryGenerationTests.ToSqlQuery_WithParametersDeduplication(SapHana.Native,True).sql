-- SapHana.Native SapHana
SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	"p"."FirstName" = 'John' OR "p"."LastName" = 'John'

-- SapHana.Native SapHana
DECLARE @firstName NVarChar(4) -- String
SET     @firstName = 'John'
DECLARE @firstName_1 NVarChar(4) -- String
SET     @firstName_1 = 'John'

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	"p"."FirstName" = :"firstName" OR "p"."LastName" = :"firstName_1"
LIMIT 2

