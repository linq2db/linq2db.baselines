-- DB2 DB2.LUW DB2LUW
SELECT
	"p"."PersonID",
	(
		SELECT
			COUNT(*)
		FROM
			"Patient" "pa"
				INNER JOIN "Person" "pe" ON "pa"."PersonID" = "pe"."PersonID"
		WHERE
			"pa"."PersonID" = "p"."PersonID"
	)
FROM
	"Person" "p"

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
	"t1"."PersonID",
	"t1"."Diagnosis"
FROM
	"Patient" "t1"

