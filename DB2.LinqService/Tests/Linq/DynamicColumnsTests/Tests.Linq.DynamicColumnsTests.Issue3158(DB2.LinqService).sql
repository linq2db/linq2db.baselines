BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"p"."PersonID",
	"pa"."Diagnosis"
FROM
	"Person" "p"
		INNER JOIN "Doctor" "d" ON "p"."PersonID" = "d"."PersonID"
		LEFT JOIN "Patient" "pa" ON "pa"."Diagnosis" = "p"."FirstName" OR "pa"."Diagnosis" IS NULL AND "p"."FirstName" IS NULL

