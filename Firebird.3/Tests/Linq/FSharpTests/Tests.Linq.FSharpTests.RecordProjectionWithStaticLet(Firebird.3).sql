-- Firebird.3 Firebird3
SELECT
	"p"."PersonID",
	"p"."FirstName",
	"p"."LastName"
FROM
	"Person" "p"
WHERE
	"p"."LastName" = 'Pupkin' AND "p"."FirstName" = 'John'
FETCH NEXT 2 ROWS ONLY

