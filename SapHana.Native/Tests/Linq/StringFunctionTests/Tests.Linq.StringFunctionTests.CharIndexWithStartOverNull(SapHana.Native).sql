-- SapHana.Native SapHana
SELECT
	Locate("p"."MiddleName", 'o', 2)
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
	Locate("p"."FirstName", "p"."MiddleName", 2)
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
	END, 2)
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
	Locate("p"."FirstName", 'o', CASE
		WHEN "p"."MiddleName" IS NULL THEN NULL
		ELSE 1
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
	"p"."MiddleName" IS NULL
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
DECLARE @start Integer -- Int32
SET     @start = 1

SELECT
	Locate("p"."FirstName", 'o', :"start")
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
DECLARE @nullValuedStart Integer -- Int32
SET     @nullValuedStart = NULL

SELECT
	Locate("p"."FirstName", 'o', :"nullValuedStart")
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

