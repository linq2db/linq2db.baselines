BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT FIRST 2
	"p"."PersonID",
	"p"."FirstName",
	"p"."LastName",
	"p"."MiddleName"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1

