-- Firebird.5 Firebird4
DECLARE @api Char(1) -- String
SET     @api = 'F'

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
WHERE
	@api IN ("p"."Gender")

-- Firebird.5 Firebird4
SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"

