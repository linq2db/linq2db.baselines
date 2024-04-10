BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	Count(*)
FROM
	(
		SELECT
			'test' || "a_Patient"."Diagnosis" as "c1"
		FROM
			"Person" "t1"
				LEFT JOIN "Patient" "a_Patient" ON "t1"."PersonID" = "a_Patient"."PersonID"
		GROUP BY
			'test' || "a_Patient"."Diagnosis"
	) "t2"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	Count(*)
FROM
	(
		SELECT
			'test' || "a_Patient"."Diagnosis" as "c1"
		FROM
			"Person" "t1"
				LEFT JOIN "Patient" "a_Patient" ON "t1"."PersonID" = "a_Patient"."PersonID"
		GROUP BY
			'test' || "a_Patient"."Diagnosis"
	) "t2"

