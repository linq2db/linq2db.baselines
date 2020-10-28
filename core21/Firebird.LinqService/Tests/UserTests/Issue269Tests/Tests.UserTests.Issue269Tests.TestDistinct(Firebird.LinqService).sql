BeforeExecute
-- Firebird

SELECT
	"pat"."PersonID",
	"pat"."Diagnosis"
FROM
	"Patient" "pat"
WHERE
	(EXISTS(
		SELECT
			*
		FROM
			"Person" "per"
				LEFT JOIN "Patient" "a_Patient" ON "per"."PersonID" = "a_Patient"."PersonID"
		WHERE
			"per"."PersonID" = "pat"."PersonID" AND "a_Patient"."Diagnosis" CONTAINING 'with'
	))

