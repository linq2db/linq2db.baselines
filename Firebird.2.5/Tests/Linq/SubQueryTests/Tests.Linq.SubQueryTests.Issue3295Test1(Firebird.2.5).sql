BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"x_1"."Id",
	"x_1"."StatusName"
FROM
	(
		SELECT
			CASE
				WHEN (
					SELECT FIRST 1
						"y"."PersonID"
					FROM
						"Patient" "y"
					WHERE
						"y"."PersonID" = "x"."PersonID"
				) IS NOT NULL
					THEN (
					SELECT FIRST 1
						"y_1"."Diagnosis"
					FROM
						"Patient" "y_1"
					WHERE
						"y_1"."PersonID" = "x"."PersonID"
				)
				ELSE 'abc'
			END as "StatusName",
			CASE
				WHEN (
					SELECT FIRST 1
						"y"."PersonID"
					FROM
						"Patient" "y"
					WHERE
						"y"."PersonID" = "x"."PersonID"
				) IS NOT NULL
					THEN (
					SELECT FIRST 1
						"y"."PersonID"
					FROM
						"Patient" "y"
					WHERE
						"y"."PersonID" = "x"."PersonID"
				)
				ELSE "x"."PersonID"
			END as "Id"
		FROM
			"Person" "x"
	) "x_1"
WHERE
	"x_1"."StatusName" = 'abc'

