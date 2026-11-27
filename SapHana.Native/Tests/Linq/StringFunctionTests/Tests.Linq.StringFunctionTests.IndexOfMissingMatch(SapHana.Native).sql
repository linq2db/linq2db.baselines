-- SapHana.Native SapHana
SELECT
	Locate("p"."FirstName", 'x') - 1
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
	Locate("p"."FirstName", 'x') - 1
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
DECLARE @c NVarChar -- StringFixedLength
SET     @c = 'o'

SELECT
	Locate("p"."FirstName", :"c") - 1
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
DECLARE @c NVarChar -- StringFixedLength
SET     @c = 'o'

SELECT
	Locate("p"."FirstName", :"c", 2) - 1
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

