-- Firebird.2.5 Firebird

SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1",
	"Person" "p2"
WHERE
	"t1"."PersonID" = "p2"."PersonID" AND Replace("t1"."FirstName", 'J', '%') STARTING WITH Replace("p2"."FirstName", 'J', '%')

