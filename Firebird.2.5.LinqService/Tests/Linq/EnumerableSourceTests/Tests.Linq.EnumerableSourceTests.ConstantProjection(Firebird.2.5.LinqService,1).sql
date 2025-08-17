BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	"p"."PersonID",
	"p"."FirstName",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

