﻿BeforeExecute
--  Oracle.11.Managed Oracle11

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	p."FirstName" NOT LIKE '%h~%n%' ESCAPE '~' AND p."PersonID" = 1

