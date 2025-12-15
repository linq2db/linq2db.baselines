-- Firebird.2.5 Firebird

SELECT
	"nm"."FirstName"
FROM
	"Person" "nm"
WHERE
	CHAR_LENGTH("nm"."FirstName") <> 0

-- Firebird.2.5 Firebird

SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"

