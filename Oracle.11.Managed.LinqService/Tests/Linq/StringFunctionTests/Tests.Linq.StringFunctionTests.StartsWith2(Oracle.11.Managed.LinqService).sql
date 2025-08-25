BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

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

