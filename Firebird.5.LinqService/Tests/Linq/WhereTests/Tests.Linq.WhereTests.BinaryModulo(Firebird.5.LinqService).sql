BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	Mod("p"."PersonID", 2) = 1 AND "p"."PersonID" = 1

