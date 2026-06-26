-- Firebird.3 Firebird3

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."PersonID",
	"p"."LastName",
	"p"."FirstName" || ' ' || "p"."LastName"
FROM
	"Person" "p"

