-- SapHana.Odbc SapHanaOdbc
SELECT
	Locate("p"."FirstName", 'x') - 1
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- SapHana.Odbc SapHanaOdbc
SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"

-- SapHana.Odbc SapHanaOdbc
SELECT
	Locate("p"."FirstName", 'x') - 1
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- SapHana.Odbc SapHanaOdbc
SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"

-- SapHana.Odbc SapHanaOdbc
DECLARE @c NChar(1) -- StringFixedLength
SET     @c = 'o'

SELECT
	Locate("p"."FirstName", ?) - 1
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- SapHana.Odbc SapHanaOdbc
SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"

-- SapHana.Odbc SapHanaOdbc
DECLARE @c NChar(1) -- StringFixedLength
SET     @c = 'o'

SELECT
	Locate("p"."FirstName", ?, 2) - 1
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- SapHana.Odbc SapHanaOdbc
SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"

