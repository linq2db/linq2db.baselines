-- Oracle.11.Managed Oracle11

SELECT
	p."FirstName"
FROM
	"Person" p
WHERE
	p."FirstName" || ' ' || CAST(1 AS VarChar(11)) = 'John 1'

