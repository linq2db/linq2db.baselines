BeforeExecute
-- Firebird3 Firebird

SELECT
	Count(*)
FROM
	(
		SELECT
			0 as "c1"
		FROM
			"Person" "selectParam"
				LEFT JOIN "Patient" "a_Patient" ON "selectParam"."PersonID" = "a_Patient"."PersonID"
		GROUP BY
			'test' || "a_Patient"."Diagnosis"
	) "t1"

BeforeExecute
-- Firebird3 Firebird

SELECT
	Count(*)
FROM
	(
		SELECT
			0 as "c1"
		FROM
			"Person" "selectParam"
				LEFT JOIN "Patient" "a_Patient" ON "selectParam"."PersonID" = "a_Patient"."PersonID"
		GROUP BY
			'test' || "a_Patient"."Diagnosis"
	) "t1"

