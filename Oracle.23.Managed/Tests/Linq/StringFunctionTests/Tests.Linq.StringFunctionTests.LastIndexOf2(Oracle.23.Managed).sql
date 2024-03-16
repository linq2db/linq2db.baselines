BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	p."PersonID",
	'123' || p."FirstName" || '012345'
FROM
	"Person" p
WHERE
	p."PersonID" = 1 AND CASE
		WHEN InStr('123' || p."FirstName" || '012345', '123', 6) = 0
			THEN -1
		ELSE Length('123' || p."FirstName" || '012345') - InStr(Reverse(Substr('123' || p."FirstName" || '012345', 6, Length('123' || p."FirstName" || '012345') - 5)), '321') - 2
	END = 8

