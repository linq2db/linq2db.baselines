-- SapHana.Native SapHana
SELECT
	(Locate(Substring("p"."FirstName",1 + 1),'o') + 1) * 2
FROM
	"Person" "p"
WHERE
	"p"."FirstName" LIKE '%o%' ESCAPE '~'
ORDER BY
	"p"."PersonID"

-- SapHana.Native SapHana
SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"

