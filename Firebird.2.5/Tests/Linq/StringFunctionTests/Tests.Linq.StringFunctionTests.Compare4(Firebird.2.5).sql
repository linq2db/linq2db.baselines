BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	Lower(Substring("p"."FirstName" from 2 for 2)) = Lower(Substring('Joh' from 2 for 2)) AND
	"p"."PersonID" = 1

