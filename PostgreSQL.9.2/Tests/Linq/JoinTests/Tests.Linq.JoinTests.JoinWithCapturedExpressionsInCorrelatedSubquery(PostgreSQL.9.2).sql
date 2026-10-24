-- PostgreSQL.9.2 PostgreSQL
SELECT
	p."PersonID",
	(
		SELECT
			COUNT(*)
		FROM
			"Patient" pa
				INNER JOIN "Person" pe ON pa."PersonID" = pe."PersonID"
		WHERE
			pa."PersonID" = p."PersonID"
	)
FROM
	"Person" p

-- PostgreSQL.9.2 PostgreSQL
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

-- PostgreSQL.9.2 PostgreSQL
SELECT
	t1."PersonID",
	t1."Diagnosis"
FROM
	"Patient" t1

