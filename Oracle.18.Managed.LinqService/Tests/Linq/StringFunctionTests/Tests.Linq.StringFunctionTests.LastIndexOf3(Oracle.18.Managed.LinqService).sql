﻿BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @p Varchar2(3) -- String
SET     @p = '123'

SELECT
	p."PersonID",
	'123' || p."FirstName" || '0123451234'
FROM
	"Person" p
WHERE
	p."PersonID" = 1 AND 1 = InStr(Reverse(Substr('123' || p."FirstName" || '0123451234', 6, 6)), '321') AND
	InStr(Substr('123' || p."FirstName" || '0123451234', 1, 11), :p, 6) <> 0

