BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	p."PersonID",
	p."FirstName"
FROM
	"Person" p
WHERE
	CASE
		WHEN InStr('123' || p."FirstName" || '012345', '123', 6) = 0
			THEN -1
		ELSE Length('123' || p."FirstName" || '012345') - InStr(Reverse(Substr('123' || p."FirstName" || '012345', 6, Length('123' || p."FirstName" || '012345') - 5)), '321') - 2
	END = 8 AND
	p."PersonID" = 1

