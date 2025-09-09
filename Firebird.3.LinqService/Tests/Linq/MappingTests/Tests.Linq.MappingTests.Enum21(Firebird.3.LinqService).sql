BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)
DECLARE @gender Char(1) -- String
SET     @gender = 'M'

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	"p"."Gender" = @gender

