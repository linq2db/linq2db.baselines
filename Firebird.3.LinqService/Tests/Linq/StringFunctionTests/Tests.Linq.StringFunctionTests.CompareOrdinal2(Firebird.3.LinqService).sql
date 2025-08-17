BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	Substring("p"."FirstName" from 2 for 2) = Substring('Joh' from 2 for 2) AND
	"p"."PersonID" = 1

