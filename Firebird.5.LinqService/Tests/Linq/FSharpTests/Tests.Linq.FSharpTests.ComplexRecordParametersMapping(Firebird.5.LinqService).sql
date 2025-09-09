BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	"p"."PersonID",
	"p"."MiddleName",
	"p"."FirstName",
	"p"."LastName"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1
FETCH NEXT 2 ROWS ONLY

