-- Oracle.11.Managed Oracle11

SELECT
	p."FirstName"
FROM
	"Person" p
WHERE
	p."FirstName" || ' ' || 1 = 'John 1'

