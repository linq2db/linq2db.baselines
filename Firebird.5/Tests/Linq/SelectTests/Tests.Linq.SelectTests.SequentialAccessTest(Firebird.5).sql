-- Firebird.5 Firebird4

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."PersonID",
	"p"."LastName",
	"p"."FirstName" || ' ' || "p"."LastName"
FROM
	"Person" "p"

