-- Firebird.4 Firebird4

SELECT
	"p"."PersonID",
	"p"."FirstName",
	"p"."LastName",
	"p"."MiddleName"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1
FETCH NEXT 2 ROWS ONLY

