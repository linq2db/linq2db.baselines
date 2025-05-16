BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	s."ID",
	s."FirstName"
FROM
	(
		SELECT
			CASE
				WHEN Length(p."FirstName") >= p."PersonID" THEN p."FirstName"
				ELSE LPAD(p."FirstName", p."PersonID", '.')
			END as "FirstName",
			p."PersonID" as "ID"
		FROM
			"Person" p
	) s
WHERE
	s."FirstName" <> ''

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

