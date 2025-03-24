﻿BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	Substr(p."FirstName", LENGTH(p."FirstName") - 2, 3) = 'ohn' AND
	p."PersonID" = 1

