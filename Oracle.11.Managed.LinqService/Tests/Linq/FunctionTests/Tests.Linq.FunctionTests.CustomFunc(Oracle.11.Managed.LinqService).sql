BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	p."LastName" || ', ' || p."FirstName"
FROM
	"Person" p
WHERE
	p."LastName" || ', ' || p."FirstName" = 'Pupkin, John'

