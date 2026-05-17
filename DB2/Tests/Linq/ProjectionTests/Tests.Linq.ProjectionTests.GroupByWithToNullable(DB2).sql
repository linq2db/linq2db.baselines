-- DB2 DB2.LUW DB2LUW

SELECT
	"a_Patient"."Diagnosis",
	"a_Patient"."PersonID",
	AVG("auto16031"."PersonID")
FROM
	"Person" "auto16031"
		LEFT JOIN "Patient" "a_Patient" ON "auto16031"."PersonID" = "a_Patient"."PersonID"
GROUP BY
	"auto16031"."PersonID",
	"a_Patient"."PersonID",
	"a_Patient"."Diagnosis"
HAVING
	"auto16031"."PersonID" = 1
ORDER BY
	"a_Patient"."Diagnosis" DESC
FETCH NEXT 1000 ROWS ONLY

