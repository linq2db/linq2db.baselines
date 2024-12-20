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
	p."MiddleName" IS NOT NULL

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	p."FirstName",
	p."PersonID" as ID,
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	p."MiddleName" IS NOT NULL
FETCH NEXT 2 ROWS ONLY

