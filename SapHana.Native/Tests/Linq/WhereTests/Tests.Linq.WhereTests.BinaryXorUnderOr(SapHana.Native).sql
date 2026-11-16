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
	("p"."PersonID" + ("p"."PersonID" + 1) - BITAND("p"."PersonID", 1) * 2) - BITAND("p"."PersonID", ("p"."PersonID" + 1) - BITAND("p"."PersonID", 1) * 2) = "p"."PersonID"

