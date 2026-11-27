-- DB2 DB2.LUW DB2LUW
SELECT
	Locate('o', "p"."MiddleName", 2)
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
	Locate("p"."MiddleName", "p"."FirstName", 2)
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
	Locate(CASE
		WHEN "p"."MiddleName" IS NULL THEN NULL
		ELSE 'o'
	END, "p"."FirstName", 2)
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
	Locate('o', "p"."FirstName", CASE
		WHEN "p"."MiddleName" IS NULL THEN NULL
		ELSE 1
	END)
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
	"p"."PersonID"
FROM
	"Person" "p"
WHERE
	"p"."MiddleName" IS NULL
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
DECLARE @start Integer(4) -- Int32
SET     @start = 1

SELECT
	Locate('o', "p"."FirstName", CAST(@start AS Int))
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
DECLARE @nullValuedStart Integer -- Int32
SET     @nullValuedStart = NULL

SELECT
	Locate('o', "p"."FirstName", CAST(@nullValuedStart AS Int))
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

