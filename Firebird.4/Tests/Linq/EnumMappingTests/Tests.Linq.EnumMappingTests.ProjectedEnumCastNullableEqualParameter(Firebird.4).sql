-- Firebird.4 Firebird4
DECLARE @gender Char(1) -- String
SET     @gender = 'F'

SELECT
	"p"."PersonID",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	"p"."Gender" = @gender

-- Firebird.4 Firebird4
SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"

