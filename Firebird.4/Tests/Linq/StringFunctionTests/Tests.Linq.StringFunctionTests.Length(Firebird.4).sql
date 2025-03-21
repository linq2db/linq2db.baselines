BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	CHAR_LENGTH("p"."FirstName") = CHAR_LENGTH('John') AND
	"p"."PersonID" = 1

