﻿BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1."RowNumber",
	n."PersonID" as ID
FROM
	(
		SELECT
			r."PersonID" as ID,
			ROW_NUMBER() OVER(ORDER BY r."FirstName") as "RowNumber"
		FROM
			"Person" r
	) t1
		INNER JOIN "Person" n ON t1.ID = n."PersonID"
WHERE
	n."PersonID" = 2
FETCH NEXT 2 ROWS ONLY

