﻿BeforeExecute
-- Firebird.4 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 1

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
					"Person" "per"
						LEFT JOIN "Patient" "a_Patient" ON "per"."PersonID" = "a_Patient"."PersonID"
				WHERE
					"per"."PersonID" = "pat"."PersonID"
				ORDER BY
					"per"."FirstName" DESC
				FETCH NEXT @take ROWS ONLY
			) "t1"
		WHERE
			"t1"."Diagnosis" LIKE '%with%' ESCAPE '~'
	)

