BeforeExecute
-- SapHana.Native SapHana

SELECT
	"nm"."FirstName"
FROM
	"Person" "nm"
WHERE
	NOT ("nm"."FirstName" IS NULL OR Length("nm"."FirstName") = 0)

BeforeExecute
-- SapHana.Native SapHana

SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"

