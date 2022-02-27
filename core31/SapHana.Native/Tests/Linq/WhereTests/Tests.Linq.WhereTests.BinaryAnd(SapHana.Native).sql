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
	BITAND("p"."PersonID", 3) = 1

