BeforeExecute
-- SapHana.Native SapHana (asynchronously)

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
	"p"."PersonID" = 1
LIMIT 1

