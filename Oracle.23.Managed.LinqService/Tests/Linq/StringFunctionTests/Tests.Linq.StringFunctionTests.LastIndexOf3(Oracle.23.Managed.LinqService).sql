BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @Length Int32
SET     @Length = 3

SELECT
	p."PersonID",
	'123' || p."FirstName" || '0123451234'
FROM
	"Person" p
WHERE
	p."PersonID" = 1 AND (11 - InStr(Reverse(Substr('123' || p."FirstName" || '0123451234', 6, 6)), '321')) - :Length = 7 AND
	InStr(Substr('123' || p."FirstName" || '0123451234', 1, 11), '123', 6) <> 0

