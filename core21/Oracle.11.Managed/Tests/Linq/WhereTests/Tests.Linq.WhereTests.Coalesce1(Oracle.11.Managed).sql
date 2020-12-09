﻿BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	p."PersonID" = 1 AND Nvl(p."MiddleName", 'None') = 'None' AND Nvl(p."FirstName", 'None') = 'John'

