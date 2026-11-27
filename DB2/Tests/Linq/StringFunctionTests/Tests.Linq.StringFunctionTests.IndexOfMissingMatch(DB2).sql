-- DB2 DB2.LUW DB2LUW
SELECT
	Locate('x', "p"."FirstName") - 1
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"

-- DB2 DB2.LUW DB2LUW
SELECT
	Locate('x', "p"."FirstName") - 1
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"

-- DB2 DB2.LUW DB2LUW
DECLARE @c Char(1) -- StringFixedLength
SET     @c = 'o'

SELECT
	Locate(CAST(@c AS NChar(1)), "p"."FirstName") - 1
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"

-- DB2 DB2.LUW DB2LUW
DECLARE @c Char(1) -- StringFixedLength
SET     @c = 'o'

SELECT
	Locate(CAST(@c AS NChar(1)), "p"."FirstName", 2) - 1
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"

