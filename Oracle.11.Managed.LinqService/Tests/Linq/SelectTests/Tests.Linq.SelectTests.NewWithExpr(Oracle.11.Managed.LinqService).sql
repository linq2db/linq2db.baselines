BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	p."PersonID",
	RTRIM((p."FirstName" || '1'), '')
FROM
	"Person" p

