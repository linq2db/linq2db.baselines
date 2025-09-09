BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	Upper("p"."FirstName") = 'JOHN' AND "p"."PersonID" = 1

