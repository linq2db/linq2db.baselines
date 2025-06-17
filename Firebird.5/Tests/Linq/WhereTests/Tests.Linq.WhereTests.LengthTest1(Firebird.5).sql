BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"nm"."MiddleName"
FROM
	"Person" "nm"
WHERE
	Char_Length("nm"."MiddleName") <> 0 OR "nm"."MiddleName" IS NULL

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

