-- Firebird.3 Firebird3

SELECT
	"p"."PersonID",
	"p"."FirstName",
	"p"."LastName"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1 AND "p"."FirstName" = 'John' AND
	"p"."LastName" = 'Pupkin'
FETCH NEXT 2 ROWS ONLY

