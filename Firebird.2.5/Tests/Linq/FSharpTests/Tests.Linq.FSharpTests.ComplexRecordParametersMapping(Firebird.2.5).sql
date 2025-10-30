-- Firebird.2.5 Firebird

SELECT FIRST 2
	"p"."PersonID",
	"p"."MiddleName",
	"p"."FirstName",
	"p"."LastName"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1

