BeforeExecute
-- Firebird4 Firebird

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
					"t1"."Diagnosis"
				FROM
					(
						SELECT SKIP 0
							"a_Patient"."Diagnosis"
						FROM
							"Person" "per"
								LEFT JOIN "Patient" "a_Patient" ON "per"."PersonID" = "a_Patient"."PersonID"
						WHERE
							"per"."PersonID" = "pat"."PersonID"
						ORDER BY
							"per"."FirstName" DESC
					) "t1"
			) "t2"
		WHERE
			"t2"."Diagnosis" LIKE '%with%' ESCAPE '~'
	)

