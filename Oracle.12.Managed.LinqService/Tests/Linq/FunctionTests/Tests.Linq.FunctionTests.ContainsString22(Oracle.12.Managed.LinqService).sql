﻿BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @nm Varchar2(4) -- String
SET     @nm = 'John'

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	p."FirstName" IN (:nm)

