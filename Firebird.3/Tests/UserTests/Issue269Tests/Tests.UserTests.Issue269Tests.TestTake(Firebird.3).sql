﻿BeforeExecute
-- Firebird.3 Firebird3

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
				SELECT
					"a_Patient"."Diagnosis"
				FROM
					"Person" "c_1"
						LEFT JOIN "Patient" "a_Patient" ON "c_1"."PersonID" = "a_Patient"."PersonID"
				WHERE
					"c_1"."PersonID" = "pat"."PersonID"
				ORDER BY
					"c_1"."FirstName" DESC
				FETCH NEXT 1 ROWS ONLY
			) "t1"
		WHERE
			"t1"."Diagnosis" LIKE '%with%' ESCAPE '~'
	)

