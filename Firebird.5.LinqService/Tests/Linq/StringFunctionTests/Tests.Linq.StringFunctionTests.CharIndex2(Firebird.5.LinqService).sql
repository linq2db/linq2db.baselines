BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	Position('p', "p"."LastName", 2) = 3 AND "p"."PersonID" = 1

