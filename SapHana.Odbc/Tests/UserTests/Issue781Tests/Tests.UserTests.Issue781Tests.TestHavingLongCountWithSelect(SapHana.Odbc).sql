BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Count(*)
FROM
	(
		SELECT
			"_1"."c1"
		FROM
			(
				SELECT
					'test' || "a_Patient"."Diagnosis" as "c1"
				FROM
					"Person" "_"
						LEFT JOIN "Patient" "a_Patient" ON "_"."PersonID" = "a_Patient"."PersonID"
			) "_1"
		GROUP BY
			"_1"."c1"
		HAVING
			"_1"."c1" IS NOT NULL
	) "t1"

