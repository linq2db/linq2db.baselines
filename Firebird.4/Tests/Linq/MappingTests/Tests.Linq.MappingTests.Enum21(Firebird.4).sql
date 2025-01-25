BeforeExecute
-- Firebird.4 Firebird4
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

