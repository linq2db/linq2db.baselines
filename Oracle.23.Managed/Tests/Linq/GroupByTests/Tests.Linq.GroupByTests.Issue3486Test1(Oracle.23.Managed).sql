﻿BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	gr."FirstName",
	gr."LastName",
	SUM(gr."PersonID")
FROM
	"Person" gr
GROUP BY
	gr."FirstName",
	gr."LastName"

