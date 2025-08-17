BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	Position('e', "p"."LastName", 3) = 5 AND "p"."PersonID" = 2

