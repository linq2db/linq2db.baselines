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
	p."FirstName" IS NOT NULL AND (Length(p."FirstName") <> 0 OR Length(p."FirstName") IS NULL) AND
	p."PersonID" = 1

