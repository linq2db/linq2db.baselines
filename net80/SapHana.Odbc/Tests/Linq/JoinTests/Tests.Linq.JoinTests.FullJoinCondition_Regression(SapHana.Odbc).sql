BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Count(*)
FROM
	(
		SELECT
			"p"."PersonID" as "Key_1",
			Count(*) as "Count_1"
		FROM
			"Person" "p"
		GROUP BY
			"p"."PersonID"
	) "q1"
		FULL JOIN (
			SELECT
				"p_1"."PersonID" as "Key_1",
				Count(*) as "Count_1"
			FROM
				"Patient" "p_1"
			GROUP BY
				"p_1"."PersonID"
		) "t1" ON "q1"."Key_1" = "t1"."Key_1" AND ("q1"."Count_1" = "t1"."Count_1" OR "q1"."Count_1" IS NULL AND "t1"."Count_1" IS NULL)
WHERE
	("q1"."Count_1" IS NULL OR "t1"."Count_1" IS NULL)

