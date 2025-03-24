BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	(LENGTH(p."LastName") - InStr(Reverse(p."LastName"), 'p')) - LENGTH('p') = 1 AND
	InStr(p."LastName", 'p') <> 0 AND p."PersonID" = 1

