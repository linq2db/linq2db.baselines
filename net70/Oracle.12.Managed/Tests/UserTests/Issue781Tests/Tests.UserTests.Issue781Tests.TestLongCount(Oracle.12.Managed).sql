﻿BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	Count(*)
FROM
	(
		SELECT
			0 as "c1"
		FROM
			"Person" selectParam
				LEFT JOIN "Patient" a_Patient ON selectParam."PersonID" = a_Patient."PersonID"
		GROUP BY
			'test' || a_Patient."Diagnosis"
	) t1

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	Count(*)
FROM
	(
		SELECT
			0 as "c1"
		FROM
			"Person" selectParam
				LEFT JOIN "Patient" a_Patient ON selectParam."PersonID" = a_Patient."PersonID"
		GROUP BY
			'test' || a_Patient."Diagnosis"
	) t1

