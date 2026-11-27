-- SapHana.Native SapHana
SELECT
	Locate("p"."MiddleName", 'o')
FROM
	"Person" "p"
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

-- SapHana.Native SapHana
SELECT
	Locate("p"."FirstName", "p"."MiddleName")
FROM
	"Person" "p"
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

-- SapHana.Native SapHana
SELECT
	Locate("p"."FirstName", CASE
		WHEN "p"."MiddleName" IS NULL THEN NULL
		ELSE 'o'
	END)
FROM
	"Person" "p"
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

-- SapHana.Native SapHana
SELECT
	"p"."PersonID"
FROM
	"Person" "p"
WHERE
	Locate("p"."MiddleName", 'o') = 0
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

