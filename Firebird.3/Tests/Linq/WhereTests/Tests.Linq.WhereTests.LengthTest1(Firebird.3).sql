-- Firebird.3 Firebird3

SELECT
	"nm"."MiddleName"
FROM
	"Person" "nm"
WHERE
	CHAR_LENGTH("nm"."MiddleName") <> 0 OR "nm"."MiddleName" IS NULL

-- Firebird.3 Firebird3

SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"

