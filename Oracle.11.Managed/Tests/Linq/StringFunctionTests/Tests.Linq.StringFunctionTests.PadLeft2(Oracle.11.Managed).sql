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
	'123' || CASE
		WHEN LENGTH(p."FirstName") >= 6 THEN p."FirstName"
		ELSE LPAD(p."FirstName", 6, '*')
	END = '123**John' AND
	p."PersonID" = 1

