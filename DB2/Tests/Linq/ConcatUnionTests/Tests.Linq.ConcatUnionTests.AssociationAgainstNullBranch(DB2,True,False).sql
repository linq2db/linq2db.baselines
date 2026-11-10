-- DB2 DB2.LUW DB2LUW
SELECT
	"p"."PersonID",
	"a_Patient"."PersonID",
	"a_Patient"."PersonID",
	"a_Patient"."Diagnosis"
FROM
	"Person" "p"
		LEFT JOIN "Patient" "a_Patient" ON "p"."PersonID" = "a_Patient"."PersonID"
UNION
SELECT
	"p_1"."PersonID",
	CAST(NULL AS Int),
	CAST(NULL AS Int),
	CAST(NULL AS NVarChar(255))
FROM
	"Person" "p_1"

