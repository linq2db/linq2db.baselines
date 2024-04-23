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
				SELECT DISTINCT
					"t1"."Diagnosis"
				FROM
					(
						SELECT
							"a_Patient"."Diagnosis"
						FROM
							"Person" "per"
								LEFT JOIN "Patient" "a_Patient" ON "per"."PersonID" = "a_Patient"."PersonID"
						WHERE
							"per"."PersonID" = "pat"."PersonID"
						ORDER BY
							"per"."FirstName" DESC
						OFFSET 0 ROWS
					) "t1"
			) "t2"
		WHERE
			"t2"."Diagnosis" LIKE '%with%' ESCAPE '~'
	)

