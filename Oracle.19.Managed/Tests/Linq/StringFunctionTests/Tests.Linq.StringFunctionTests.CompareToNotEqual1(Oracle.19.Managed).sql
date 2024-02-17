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
WHERE
	(p."FirstName" <> 'Jo' OR CASE
		WHEN p."FirstName" > 'Jo' THEN 1
		WHEN p."FirstName" = 'Jo' THEN 0
		ELSE -1
	END IS NULL) AND
	p."PersonID" = 1

