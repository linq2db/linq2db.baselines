BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	"x"."PersonID",
	"x"."FirstName",
	"x"."LastName",
	"x"."MiddleName"
FROM
	"Person" "x"
WHERE
	"x"."FirstName" = 'John'

