-- DB2 DB2.LUW DB2LUW

SELECT
	CAST("a_Patient"."PersonID" IS NOT NULL AS smallint)
FROM
	"Person" "p"
		LEFT JOIN "Patient" "a_Patient" ON "p"."PersonID" = "a_Patient"."PersonID"

