BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	r."FirstName",
	r."PersonID",
	r."LastName",
	r."MiddleName",
	r."Gender"
FROM
	"Person" r
WHERE
	r."PersonID" = 4 AND r."MiddleName" IS NOT NULL

