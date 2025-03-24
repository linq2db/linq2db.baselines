﻿BeforeExecute
--  Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @str Varchar2(6) -- String
SET     @str = '%o~%h%'

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	p."FirstName" NOT LIKE :str ESCAPE '~' AND p."PersonID" = 1

