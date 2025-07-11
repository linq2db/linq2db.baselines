﻿BeforeExecute
BeginTransaction
BeforeExecute
-- Firebird.5 Firebird4

MERGE INTO "Person" "Target"
USING (
	SELECT
		"t1"."PersonID" as ID
	FROM
		"Person" "t1"
) "Source"
(
	ID
)
ON ("Target"."PersonID" = "Source".ID + 10)

WHEN NOT MATCHED BY SOURCE AND ((
	SELECT
		CASE
			WHEN "p"."Diagnosis" LIKE '%very%' ESCAPE '~' THEN TRUE
			ELSE FALSE
		END
	FROM
		"Patient" "p"
	WHERE
		"p"."PersonID" = "Target"."PersonID"
)) THEN DELETE

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"
ORDER BY
	"t1"."PersonID"

BeforeExecute
DisposeTransaction
