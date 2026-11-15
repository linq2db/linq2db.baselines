-- Firebird.4 Firebird4
SELECT
	"p"."PersonID",
	"c_1"."PersonID"
FROM
	"Person" "p",
	"Person" "c_1"
WHERE
	"p"."Gender" = "c_1"."Gender"

-- Firebird.4 Firebird4
SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"

