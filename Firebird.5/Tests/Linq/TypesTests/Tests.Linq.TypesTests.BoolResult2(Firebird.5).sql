﻿BeforeExecute
-- Firebird.5 Firebird4

SELECT
	CASE
		WHEN "a_Patient"."PersonID" IS NOT NULL
			THEN TRUE
		ELSE FALSE
	END
FROM
	"Person" "p"
		LEFT JOIN "Patient" "a_Patient" ON "p"."PersonID" = "a_Patient"."PersonID"

