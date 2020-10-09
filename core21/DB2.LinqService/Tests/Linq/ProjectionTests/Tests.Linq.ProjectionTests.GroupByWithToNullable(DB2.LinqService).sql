BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	"a_Patient"."Diagnosis", 
	"a_Patient"."PersonID", 
	Avg("selectParam"."PersonID")
FROM
	"Person" "selectParam"
		LEFT JOIN "Patient" "a_Patient" ON "selectParam"."PersonID" = "a_Patient"."PersonID"
GROUP BY
	"selectParam"."PersonID",
	"a_Patient"."PersonID",
	"a_Patient"."Diagnosis"
HAVING
	"selectParam"."PersonID" = 1
ORDER BY
	"a_Patient"."Diagnosis" DESC
FETCH FIRST 1000 ROWS ONLY

