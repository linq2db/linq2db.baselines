﻿BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @p Varchar2(1) -- String
SET     @p = 'p'

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	(CASE
		WHEN InStr(p."LastName", :p) = 0 THEN -1
		ELSE Length(p."LastName") - InStr(Reverse(p."LastName"), 'p')
	END) = 2 AND
	p."PersonID" = 1

