﻿BeforeExecute
--  Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	Reverse(p."FirstName") = 'nhoJ' AND p."PersonID" = 1

