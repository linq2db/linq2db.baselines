BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	p."FirstName"
FROM
	"Person" p
WHERE
	p."PersonID" = 1 AND ROWNUM <= 1

