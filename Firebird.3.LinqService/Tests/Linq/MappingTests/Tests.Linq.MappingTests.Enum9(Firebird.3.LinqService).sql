BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"p"."PersonID",
	"p"."FirstName",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1 AND "p"."Gender" = 'M'

