-- Oracle.11.Managed Oracle11
SELECT
	CASE
		WHEN InStr(p."FirstName", 'x', 2) = 0 THEN -1
		ELSE Length(p."FirstName") - InStr(Reverse(Substr(p."FirstName", 2, Length(p."FirstName") - 1)), 'x')
	END
FROM
	"Person" p
ORDER BY
	p."PersonID"

-- Oracle.11.Managed Oracle11
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

