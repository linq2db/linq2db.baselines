﻿BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @firstName Varchar2(255) -- String
SET     @firstName = 'John'

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	p."FirstName" = :firstName OR p."LastName" = :firstName

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @firstName Varchar2(4) -- String
SET     @firstName = 'John'

SELECT
	p."FirstName",
	p."PersonID" as ID,
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	p."FirstName" = :firstName OR p."LastName" = :firstName
FETCH NEXT 2 ROWS ONLY

