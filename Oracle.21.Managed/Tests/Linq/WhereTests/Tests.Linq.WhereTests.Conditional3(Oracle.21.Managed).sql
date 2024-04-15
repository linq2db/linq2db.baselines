BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	p."PersonID" = 1 AND NOT (p."MiddleName" IS NOT NULL OR p."PersonID" = 2 OR p."MiddleName" IS NOT NULL) AND
	NOT (p."FirstName" IS NULL OR p."PersonID" = 2 OR p."FirstName" IS NULL)

