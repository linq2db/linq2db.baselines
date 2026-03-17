-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."MiddleName"
FROM
	(
		SELECT DISTINCT
			"ch"."MiddleName"
		FROM
			"Person" "ch"
	) "t1"
ORDER BY
	Coalesce("t1"."MiddleName", '-1')

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"

