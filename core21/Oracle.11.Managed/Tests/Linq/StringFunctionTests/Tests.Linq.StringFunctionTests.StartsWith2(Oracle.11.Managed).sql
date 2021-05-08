BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	'john123' LIKE Replace(Replace(Replace(Lower(p."FirstName"), '~', '~~'), '%', '~%'), '_', '~_') || '%' ESCAPE '~'

