-- Firebird.3 Firebird3
DECLARE @boxed Char(1) -- String
SET     @boxed = 'M'

SELECT
	"p"."PersonID",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	"p"."Gender" = @boxed

-- Firebird.3 Firebird3
SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"

