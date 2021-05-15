﻿BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	p1."FirstName",
	p1."PersonID",
	p1."LastName",
	p1."MiddleName",
	p1."Gender"
FROM
	"Person" p1,
	"Person" p2
WHERE
	p1."PersonID" = p2."PersonID" AND Lower(Replace(p1."FirstName", 'J', '%')) LIKE Replace(Replace(Replace(Lower(Replace(p2."FirstName", 'J', '%')), '~', '~~'), '%', '~%'), '_', '~_') || '%' ESCAPE '~'

