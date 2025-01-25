﻿BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1000

SELECT
	a_Patient."Diagnosis" as "value_1",
	a_Patient."PersonID" as "id",
	AVG(auto16031."PersonID") as AVG_1
FROM
	"Person" auto16031
		LEFT JOIN "Patient" a_Patient ON auto16031."PersonID" = a_Patient."PersonID"
GROUP BY
	auto16031."PersonID",
	a_Patient."PersonID",
	a_Patient."Diagnosis"
HAVING
	auto16031."PersonID" = 1
ORDER BY
	a_Patient."Diagnosis" DESC
FETCH NEXT :take ROWS ONLY

