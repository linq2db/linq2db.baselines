-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	(
		SELECT
			COUNT(*) as "cnt"
		FROM
			"Doctor" d
		WHERE
			d."PersonID" = t."PersonID"
	),
	t."PersonID",
	t."FirstName",
	t."LastName",
	t."MiddleName",
	t."Gender",
	t."LastName" || ', ' || t."FirstName",
	t."LastName" || ', ' || t."FirstName",
	(
		SELECT
			COUNT(*) as "DoctorCount"
		FROM
			"Doctor" d_1
		WHERE
			d_1."PersonID" = t."PersonID"
	)
FROM
	"Person" t
WHERE
	t."FirstName" <> 'John'

