﻿BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	e."PersonID",
	e."FirstName",
	e."LastName",
	e."FirstName" || ':' || e."LastName"
FROM
	"Person" e
WHERE
	e."PersonID" = 1 AND ROWNUM <= 2

