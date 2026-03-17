-- Firebird.5 Firebird4

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	Substring("p"."FirstName" from 2 for (CHAR_LENGTH("p"."FirstName") - 1)) = 'ohn' AND
	"p"."PersonID" = 1

