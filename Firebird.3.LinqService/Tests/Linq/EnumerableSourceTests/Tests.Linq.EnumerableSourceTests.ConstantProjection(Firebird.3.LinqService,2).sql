BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

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

