-- Firebird.3 Firebird3
DECLARE @param VarChar(4) -- String
SET     @param = 'JOHN'

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	Upper("p"."FirstName") = CAST(@param AS VARCHAR(4)) AND
	"p"."PersonID" = 1

