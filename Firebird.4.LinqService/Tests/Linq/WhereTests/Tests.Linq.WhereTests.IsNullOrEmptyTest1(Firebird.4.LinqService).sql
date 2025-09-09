BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	"nm"."MiddleName"
FROM
	"Person" "nm"
WHERE
	NOT ("nm"."MiddleName" IS NULL OR CHAR_LENGTH("nm"."MiddleName") = 0)

BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"

