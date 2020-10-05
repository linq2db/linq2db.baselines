BeforeExecute
-- SapHana.Native SapHana

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	Left("p"."FirstName", 1) || Right("p"."FirstName", Length("p"."FirstName") - 3) = 'Jn' AND
	"p"."PersonID" = 1

