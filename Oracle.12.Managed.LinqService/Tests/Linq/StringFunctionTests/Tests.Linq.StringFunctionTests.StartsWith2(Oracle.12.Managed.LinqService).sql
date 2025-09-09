BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	'John123' LIKE Replace(Replace(Replace(p."FirstName", '~', '~~'), '%', '~%'), '_', '~_') || '%' ESCAPE '~'

