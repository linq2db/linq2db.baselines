BeforeExecute
-- Firebird.4 Firebird4
DECLARE @p VarChar(2) -- String
SET     @p = 'oh'

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	Position(CAST(@p AS VARCHAR(2)), "p"."FirstName") - 1 = 1 AND
	"p"."PersonID" = 1

