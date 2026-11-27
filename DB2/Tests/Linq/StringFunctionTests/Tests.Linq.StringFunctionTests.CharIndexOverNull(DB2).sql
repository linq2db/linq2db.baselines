-- DB2 DB2.LUW DB2LUW
SELECT
	Locate('o', "p"."MiddleName")
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
	Locate("p"."MiddleName", "p"."FirstName")
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
	END, "p"."FirstName")
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
	Locate('o', "p"."MiddleName") = 0
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

