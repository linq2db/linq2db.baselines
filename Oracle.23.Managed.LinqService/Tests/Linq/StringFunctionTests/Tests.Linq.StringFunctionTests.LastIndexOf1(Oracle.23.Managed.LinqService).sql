BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @p Varchar2(1) -- String
SET     @p = 'p'

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	Length(p."LastName") - InStr(Reverse(p."LastName"), 'p') = 2 AND
	(InStr(p."LastName", :p) <> 0 OR InStr(p."LastName", :p) IS NULL) AND
	p."PersonID" = 1

