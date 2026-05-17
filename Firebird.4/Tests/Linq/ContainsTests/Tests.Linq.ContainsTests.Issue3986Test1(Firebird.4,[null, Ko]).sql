-- Firebird.4 Firebird4

SELECT
	"r"."FirstName",
	"r"."PersonID",
	"r"."LastName",
	"r"."MiddleName",
	"r"."Gender"
FROM
	"Person" "r"
WHERE
	"r"."PersonID" = 3 AND ("r"."MiddleName" IN ('Ko') OR "r"."MiddleName" IS NULL)

