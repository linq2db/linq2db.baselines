﻿BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	r."FirstName",
	r."PersonID",
	r."LastName",
	r."MiddleName",
	r."Gender"
FROM
	"Person" r
WHERE
	r."PersonID" = 3 AND 1 = 0

