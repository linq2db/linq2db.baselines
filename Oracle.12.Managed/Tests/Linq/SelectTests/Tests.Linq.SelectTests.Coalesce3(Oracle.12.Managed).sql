﻿BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	p."PersonID",
	Coalesce(p."MiddleName", p."FirstName", 'None'),
	Coalesce(p."LastName", p."FirstName", 'None'),
	Coalesce(p."MiddleName", p."MiddleName", 'None')
FROM
	"Person" p
WHERE
	p."PersonID" = 1

