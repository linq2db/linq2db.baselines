﻿BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	p."FirstName",
	p."PersonID" as ID,
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	p."PersonID" = 1
FETCH NEXT 1 ROWS ONLY

