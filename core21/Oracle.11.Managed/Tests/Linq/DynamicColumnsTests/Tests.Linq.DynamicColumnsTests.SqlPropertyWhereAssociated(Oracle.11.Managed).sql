﻿BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	x."PersonID"
FROM
	"Person" x
		LEFT JOIN "Patient" a_Patient ON x."PersonID" = a_Patient."PersonID"
WHERE
	a_Patient."Diagnosis" IS NOT NULL

