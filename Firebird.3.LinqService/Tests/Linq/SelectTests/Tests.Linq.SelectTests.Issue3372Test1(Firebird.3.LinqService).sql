﻿BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"e"."FirstName",
	CASE
		WHEN "a_Person"."FirstName" IS NOT NULL AND "a_Person"."LastName" IS NOT NULL
			THEN TRUE
		ELSE FALSE
	END,
	"a_Person"."LastName"
FROM
	"Person" "e"
		LEFT JOIN "Patient" "a_Patient" ON "e"."PersonID" = "a_Patient"."PersonID"
		LEFT JOIN "Person" "a_Person" ON "a_Patient"."PersonID" = "a_Person"."PersonID"

