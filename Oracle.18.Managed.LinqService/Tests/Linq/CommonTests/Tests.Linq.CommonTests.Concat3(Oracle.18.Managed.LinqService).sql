BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	p."FirstName"
FROM
	"Person" p
WHERE
	(p."FirstName" || ' 12') = 'John 12'

