BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	p."PersonID",
	'123' || p."FirstName" || '0123451234'
FROM
	"Person" p
WHERE
	p."PersonID" = 1 AND CASE
		WHEN InStr(Substr('123' || p."FirstName" || '0123451234', 1, 11), '123', 6) = 0
			THEN -1
		ELSE 11 - InStr(Reverse(Substr('123' || p."FirstName" || '0123451234', 6, 6)), '321') - 2
	END = 8

