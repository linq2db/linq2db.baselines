BeforeExecute
-- Firebird.2.5 Firebird

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
					"t2"."Diagnosis"
				FROM
					(
						SELECT SKIP 0
							"a_Patient"."Diagnosis"
						FROM
							"Person" "t1"
								LEFT JOIN "Patient" "a_Patient" ON "t1"."PersonID" = "a_Patient"."PersonID"
						WHERE
							"t1"."PersonID" = "pat"."PersonID"
						ORDER BY
							"t1"."FirstName" DESC
					) "t2"
			) "t3"
		WHERE
			"t3"."Diagnosis" LIKE '%with%' ESCAPE '~'
	)

