BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	NOT ("p"."FirstName" IS NULL OR Char_Length("p"."FirstName") = 0) AND
	"p"."PersonID" = 1

