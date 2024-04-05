﻿BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	Count(*)
FROM
	(
		SELECT
			'test' || a_Patient."Diagnosis" as "c1"
		FROM
			"Person" t1
				LEFT JOIN "Patient" a_Patient ON t1."PersonID" = a_Patient."PersonID"
		GROUP BY
			'test' || a_Patient."Diagnosis"
	) t2

