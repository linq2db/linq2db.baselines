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
	Locate(Substring("p"."LastName",2 + 1),'p') + 2 = 3 AND
	"p"."PersonID" = 1

