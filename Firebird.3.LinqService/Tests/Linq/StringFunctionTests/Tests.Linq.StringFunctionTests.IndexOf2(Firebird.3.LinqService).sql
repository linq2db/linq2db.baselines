BeforeExecute
-- Firebird.3 Firebird3
DECLARE @p VarChar(1) -- String
SET     @p = 'e'

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	Position(CAST(@p AS VARCHAR(1)), "p"."LastName", 3) - 1 = 4 AND
	"p"."PersonID" = 2

