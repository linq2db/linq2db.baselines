﻿BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	Substr(p."FirstName", 2, LENGTH(p."FirstName") - 1) = 'ohn' AND
	p."PersonID" = 1

