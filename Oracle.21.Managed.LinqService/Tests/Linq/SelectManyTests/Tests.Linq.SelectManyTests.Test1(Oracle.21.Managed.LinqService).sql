﻿BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t."PersonID",
	p2."FirstName"
FROM
	"Person" t
		CROSS JOIN "Person" p2
WHERE
	t."PersonID" = p2."PersonID" AND t."PersonID" = 1

