BeforeExecute
-- Firebird.5 Firebird4
DECLARE @skip Integer -- Int32
SET     @skip = 0

SELECT
	"pat"."PersonID",
	"pat"."Diagnosis"
FROM
	"Patient" "pat"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT DISTINCT
					"a_Patient"."Diagnosis"
				FROM
					"Person" "per"
						LEFT JOIN "Patient" "a_Patient" ON "per"."PersonID" = "a_Patient"."PersonID"
				WHERE
					"per"."PersonID" = "pat"."PersonID"
				ORDER BY
					"per"."FirstName" DESC
				OFFSET @skip ROWS
			) "t1"
		WHERE
			"t1"."Diagnosis" LIKE '%with%' ESCAPE '~'
	)

