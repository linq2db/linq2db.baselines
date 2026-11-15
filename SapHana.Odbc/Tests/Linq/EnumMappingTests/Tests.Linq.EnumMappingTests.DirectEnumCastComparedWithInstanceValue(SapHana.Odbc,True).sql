-- SapHana.Odbc SapHanaOdbc
DECLARE @Api NChar(1) -- StringFixedLength
SET     @Api = 'F'

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	CASE
		WHEN "p"."PersonID" > 2 THEN 'M'
		ELSE 'F'
	END IN (?)

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
DECLARE @Api NChar(1) -- StringFixedLength
SET     @Api = 'M'

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	CASE
		WHEN "p"."PersonID" > 2 THEN 'M'
		ELSE 'F'
	END IN (?)

-- SapHana.Odbc SapHanaOdbc
SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"

