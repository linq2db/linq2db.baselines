BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	p."LastName" || ', ' || p."FirstName"
FROM
	"Person" p
WHERE
	p."LastName" || ', ' || p."FirstName" = 'Pupkin, John'

