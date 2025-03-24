﻿BeforeExecute
--  Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @p Varchar2(4) -- String
SET     @p = 'John'

SELECT
	t."PersonID" as ID,
	t."FirstName",
	t."LastName",
	t."MiddleName",
	t."Gender"
FROM
	"Person" t
WHERE
	t."FirstName" = :p
FETCH NEXT 2 ROWS ONLY

BeforeExecute
--  Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @p Varchar2(6) -- String
SET     @p = 'Tester'

SELECT
	t."PersonID" as ID,
	t."FirstName",
	t."LastName",
	t."MiddleName",
	t."Gender"
FROM
	"Person" t
WHERE
	t."FirstName" = :p
FETCH NEXT 2 ROWS ONLY

