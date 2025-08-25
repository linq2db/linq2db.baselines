BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

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
				SELECT SKIP 0 DISTINCT
					"a_Patient"."Diagnosis"
				FROM
					"Person" "t1"
						LEFT JOIN "Patient" "a_Patient" ON "t1"."PersonID" = "a_Patient"."PersonID"
				WHERE
					"t1"."PersonID" = "pat"."PersonID"
			) "t2"
		WHERE
			"t2"."Diagnosis" LIKE '%with%' ESCAPE '~'
	)

