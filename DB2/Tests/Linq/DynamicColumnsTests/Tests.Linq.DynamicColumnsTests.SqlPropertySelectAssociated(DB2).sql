-- DB2 DB2.LUW DB2LUW

SELECT
	"a_Patient"."Diagnosis"
FROM
	"Person" "x"
		LEFT JOIN "Patient" "a_Patient" ON "x"."PersonID" = "a_Patient"."PersonID"

