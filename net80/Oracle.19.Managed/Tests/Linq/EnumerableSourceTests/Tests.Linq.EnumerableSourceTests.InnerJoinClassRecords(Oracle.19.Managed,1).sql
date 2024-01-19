﻿BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
		INNER JOIN (
			SELECT 1 AS "PersonID" FROM sys.dual
			UNION ALL
			SELECT 2 FROM sys.dual) n ON p."PersonID" = n."PersonID"

