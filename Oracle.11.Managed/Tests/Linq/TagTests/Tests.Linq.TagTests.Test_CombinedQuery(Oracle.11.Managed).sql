﻿BeforeExecute
-- Oracle.11.Managed Oracle11

/* query 1
query 2 */
SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	p."LastName" = 'a' AND p."FirstName" = 'a'

