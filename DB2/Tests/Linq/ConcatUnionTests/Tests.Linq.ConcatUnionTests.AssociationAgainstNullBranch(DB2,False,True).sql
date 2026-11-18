-- DB2 DB2.LUW DB2LUW
SELECT
	"p"."PersonID",
	CAST(NULL AS Int),
	CAST(NULL AS Int),
	CAST(NULL AS NVarChar(255))
FROM
	"Person" "p"
UNION ALL
SELECT
	"p_1"."PersonID",
	"a_Patient"."PersonID",
	"a_Patient"."PersonID",
	"a_Patient"."Diagnosis"
FROM
	"Person" "p_1"
		LEFT JOIN "Patient" "a_Patient" ON "p_1"."PersonID" = "a_Patient"."PersonID"

