BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	x."FirstName",
	x."LastName",
	x."Index_1"
FROM
	(
		SELECT
			ROW_NUMBER() OVER (ORDER BY p."PersonID" DESC) - 1 as "Index_1",
			p."FirstName",
			p."LastName",
			p."PersonID"
		FROM
			"Person" p
	) x
WHERE
	x."Index_1" > 0
ORDER BY
	x."PersonID" DESC

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

