BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	Position('oh', "p"."FirstName") = 2 AND "p"."PersonID" = 1

