BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."PersonID",
	t1."FirstName",
	t1."LastName",
	t1."MiddleName",
	t1."Gender",
	t1."LastName" || ', ' || t1."FirstName",
	t1."LastName" || ', ' || t1."FirstName",
	(
		SELECT
			COUNT(*)
		FROM
			"Doctor" d
		WHERE
			d."PersonID" = t1."PersonID"
	)
FROM
	"Person" t1

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	i_1."PersonID",
	i_1."FirstName",
	i_1."LastName",
	i_1."MiddleName",
	i_1."Gender",
	i_1."FullName",
	i_1."FullName",
	i_1."DoctorCount"
FROM
	(
		SELECT
			i."LastName",
			i."FirstName",
			i."PersonID",
			i."MiddleName",
			i."Gender",
			i."LastName" || ', ' || i."FirstName" as "FullName",
			(
				SELECT
					COUNT(*)
				FROM
					"Doctor" d
				WHERE
					d."PersonID" = i."PersonID"
			) as "DoctorCount"
		FROM
			"Person" i
	) i_1
WHERE
	i_1."LastName" || ', ' || i_1."FirstName" <> 'Pupkin, John'

