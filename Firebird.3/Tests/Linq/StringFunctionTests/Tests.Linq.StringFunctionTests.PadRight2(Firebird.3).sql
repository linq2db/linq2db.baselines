-- Firebird.3 Firebird3

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	RPad("p"."FirstName", 6, '*') || '123' = 'John**123' AND
	"p"."PersonID" = 1

