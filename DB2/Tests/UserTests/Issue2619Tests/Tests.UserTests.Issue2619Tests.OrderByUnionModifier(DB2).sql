-- DB2 DB2.LUW DB2LUW

SELECT
	"t2"."FirstName",
	"t2".ID,
	"t2"."LastName",
	"t2"."MiddleName",
	"t2"."Gender"
FROM
	(
		SELECT
			"t1"."FirstName",
			"t1"."PersonID" as ID,
			"t1"."LastName",
			"t1"."MiddleName",
			"t1"."Gender"
		FROM
			"Person" "t1"
		ORDER BY
			"t1"."LastName"
		FETCH NEXT 1 ROWS ONLY
	) "t2"
UNION
SELECT
	"t4"."FirstName",
	"t4".ID,
	"t4"."LastName",
	"t4"."MiddleName",
	"t4"."Gender"
FROM
	(
		SELECT
			"t3"."FirstName",
			"t3"."PersonID" as ID,
			"t3"."LastName",
			"t3"."MiddleName",
			"t3"."Gender"
		FROM
			"Person" "t3"
		ORDER BY
			"t3"."LastName"
		FETCH NEXT 1 ROWS ONLY
	) "t4"

