BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"nm"."FirstName"
FROM
	"Person" "nm"
WHERE
	NOT ("nm"."FirstName" IS NULL OR Char_Length("nm"."FirstName") = 0)

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"

