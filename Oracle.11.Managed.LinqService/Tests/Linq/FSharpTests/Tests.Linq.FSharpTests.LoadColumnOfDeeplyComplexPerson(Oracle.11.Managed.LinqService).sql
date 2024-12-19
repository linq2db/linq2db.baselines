BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @p Int32
SET     @p = 1

SELECT
	p."LastName"
FROM
	"Person" p
WHERE
	p."PersonID" = :p AND ROWNUM <= 2

