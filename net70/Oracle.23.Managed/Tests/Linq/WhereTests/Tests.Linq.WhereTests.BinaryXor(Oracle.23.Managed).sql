﻿BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	(p."PersonID" + 2) - BITAND(p."PersonID", 2) * 2 = 3

