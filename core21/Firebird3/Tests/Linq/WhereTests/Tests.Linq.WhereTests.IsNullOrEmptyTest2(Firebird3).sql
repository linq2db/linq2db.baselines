BeforeExecute
-- Firebird3 Firebird

SELECT
	"nm"."FirstName"
FROM
	"Person" "nm"
WHERE
	("nm"."FirstName" IS NOT NULL AND Char_Length("nm"."FirstName") <> 0)

BeforeExecute
-- Firebird3 Firebird

SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"

