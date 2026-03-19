-- Firebird.5 Firebird4

SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender",
	"p2"."FirstName",
	"p2"."PersonID",
	"p2"."LastName",
	"p2"."MiddleName",
	"p2"."Gender"
FROM
	"Person" "t1"
		LEFT JOIN "Person" "p2" ON "t1"."PersonID" = "p2"."PersonID"

