BeforeExecute
-- Firebird.3 Firebird3
DECLARE @p VarChar(4) -- String
SET     @p = 'john'

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	Lower("p"."FirstName") = @p AND "p"."PersonID" = 1

