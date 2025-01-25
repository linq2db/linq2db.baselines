BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	p."FirstName"
FROM
	"Person" p
WHERE
	p."FirstName" || ' ' || 1 = 'John 1'

