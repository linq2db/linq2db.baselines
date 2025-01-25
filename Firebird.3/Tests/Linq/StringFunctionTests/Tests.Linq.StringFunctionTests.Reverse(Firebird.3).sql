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
	Reverse("p"."FirstName") = 'nhoJ' AND "p"."PersonID" = 1

