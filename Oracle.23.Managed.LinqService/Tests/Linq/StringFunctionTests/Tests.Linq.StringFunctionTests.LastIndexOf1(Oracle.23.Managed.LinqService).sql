BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @Length Int32
SET     @Length = 1

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	(Length(p."LastName") - InStr(Reverse(p."LastName"), 'p')) - :Length = 1 AND
	InStr(p."LastName", 'p') <> 0 AND p."PersonID" = 1

