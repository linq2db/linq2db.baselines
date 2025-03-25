BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	p."PersonID",
	'123' || p."FirstName" || '012345'
FROM
	"Person" p
WHERE
	p."PersonID" = 1 AND (LENGTH('123' || p."FirstName" || '012345') - InStr(Reverse(Substr('123' || p."FirstName" || '012345', 6, LENGTH('123' || p."FirstName" || '012345') - 5)), '321')) - LENGTH('123') = 7 AND
	InStr('123' || p."FirstName" || '012345', '123', 6) <> 0

