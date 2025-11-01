-- Firebird.5 Firebird4

SELECT
	"p"."PersonID",
	"p"."FirstName",
	"p"."LastName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1
FETCH NEXT 2 ROWS ONLY

