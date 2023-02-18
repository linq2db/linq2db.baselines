BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @p_1 Int32
SET     @p_1 = 1

SELECT
	r."FirstName",
	r."PersonID",
	r."LastName",
	r."MiddleName",
	r."Gender"
FROM
	"Person" r
WHERE
	r."PersonID" = :p_1

