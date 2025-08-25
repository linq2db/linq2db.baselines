BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	"x"."PersonID"
FROM
	"Person" "x"
		INNER JOIN "Patient" "a_Patient" ON "x"."PersonID" = "a_Patient"."PersonID"
WHERE
	"a_Patient"."Diagnosis" IS NOT NULL

