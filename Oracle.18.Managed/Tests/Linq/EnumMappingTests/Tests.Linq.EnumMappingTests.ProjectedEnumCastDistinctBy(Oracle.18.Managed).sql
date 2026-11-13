-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	p."Gender"
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e."Gender" ORDER BY e."PersonID") as "RowNumber",
			e."PersonID" as ID,
			e."Gender"
		FROM
			"Person" e
	) p
WHERE
	p."RowNumber" = 1
ORDER BY
	p.ID

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

