﻿BeforeExecute
--  Oracle.11.Managed Oracle11
DECLARE @gender Char(1) -- AnsiStringFixedLength
SET     @gender = 'M'

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	p."Gender" = :gender

