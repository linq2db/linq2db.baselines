BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	"a_Patient"."Diagnosis", 
	"a_Patient"."PersonID", 
	Avg("t1"."PersonID")
FROM
	"Person" "t1"
		LEFT JOIN "Patient" "a_Patient" ON "t1"."PersonID" = "a_Patient"."PersonID"
GROUP BY
	"t1"."PersonID",
	"a_Patient"."PersonID",
	"a_Patient"."Diagnosis"
HAVING
	"t1"."PersonID" = 1
ORDER BY
	"a_Patient"."Diagnosis" DESC
FETCH FIRST 1000 ROWS ONLY

