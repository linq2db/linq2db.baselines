BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	"x_2"."Id",
	"x_2"."StatusName"
FROM
	(
		SELECT
			CASE
				WHEN "x_1"."PersonID" IS NOT NULL THEN "x_1"."Diagnosis"
				ELSE 'abc'
			END as "StatusName",
			CASE
				WHEN "x_1"."PersonID" IS NOT NULL THEN "x_1"."PersonID"
				ELSE "x_1"."PersonID_1"
			END as "Id"
		FROM
			(
				SELECT
					(
						SELECT FIRST 1
							"y"."PersonID"
						FROM
							"Patient" "y"
						WHERE
							"y"."PersonID" = "x"."PersonID"
					) as "PersonID",
					(
						SELECT FIRST 1
							"y_1"."Diagnosis"
						FROM
							"Patient" "y_1"
						WHERE
							"y_1"."PersonID" = "x"."PersonID"
					) as "Diagnosis",
					"x"."PersonID" as "PersonID_1"
				FROM
					"Person" "x"
			) "x_1"
	) "x_2"
WHERE
	"x_2"."StatusName" = 'abc'

