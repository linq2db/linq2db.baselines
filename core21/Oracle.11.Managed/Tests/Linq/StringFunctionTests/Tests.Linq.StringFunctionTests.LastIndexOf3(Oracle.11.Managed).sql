BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @Length_2 Int32
SET     @Length_2 = 9

SELECT
	p."PersonID",
	p."FirstName"
FROM
	"Person" p
WHERE
	CASE
		WHEN InStr(Substr('123' || p."FirstName" || '0123451234', 1, 11), '123', 6) = 0
			THEN -1
		ELSE :Length_2 - InStr(Reverse(Substr('123' || p."FirstName" || '0123451234', 6, 6)), '321')
	END = 8 AND
	p."PersonID" = 1

