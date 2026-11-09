-- Firebird.2.5 Firebird
SELECT
	"g_1"."Gender",
	COUNT(*)
FROM
	"Person" "g_1"
GROUP BY
	"g_1"."Gender"

-- Firebird.2.5 Firebird
SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"

