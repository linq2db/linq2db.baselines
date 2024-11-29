BeforeExecute
-- Firebird.3 Firebird3
DECLARE @param VarChar(4) -- String
SET     @param = 'john'

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	Upper("p"."FirstName") = Upper(@param) AND "p"."PersonID" = 1

