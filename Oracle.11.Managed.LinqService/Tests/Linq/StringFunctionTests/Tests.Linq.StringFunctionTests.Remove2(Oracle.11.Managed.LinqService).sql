﻿BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	Substr(p."FirstName", 1, 1) || Substr(p."FirstName", Length(p."FirstName") - (Length(p."FirstName") - 3) + 1, Length(p."FirstName") - 3) = 'Jn' AND
	p."PersonID" = 1

