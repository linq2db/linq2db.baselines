BeforeExecute
--  Firebird.2.5 Firebird

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	Char_Length("p"."FirstName") <> 0 AND "p"."PersonID" = 1

