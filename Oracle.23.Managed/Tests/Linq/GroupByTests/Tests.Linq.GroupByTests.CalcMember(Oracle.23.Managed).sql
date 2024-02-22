﻿BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	groupedData_1."Value_1",
	Count(*)
FROM
	(
		SELECT
			CASE
				WHEN child."FirstName" = 'John'
					THEN child."FirstName"
				ELSE 'a'
			END as "Value_1"
		FROM
			"Parent" groupedData
				CROSS JOIN "Person" child
		WHERE
			child."PersonID" = groupedData."ParentID"
	) groupedData_1
GROUP BY
	groupedData_1."Value_1"

