BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"x"."PersonID",
	"x"."FirstName",
	"x"."LastName",
	"x"."MiddleName"
FROM
	"Person" "x"
WHERE
	"x"."FirstName" = 'John'

