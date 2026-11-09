-- Firebird.4 Firebird4
SELECT
	"p"."PersonID",
	"p"."Gender"
FROM
	"Person" "p"
ORDER BY
	"p"."Gender",
	"p"."PersonID"

-- Firebird.4 Firebird4
SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"

